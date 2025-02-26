#!/usr/bin/python3
"""
Module to interact with the Reddit API.

This module provides a recursive function to retrieve and count
the occurrences of given keywords in the titles of all hot articles
for a given subreddit.
"""

import requests


def count_words(subreddit, word_list, after=None, word_count={}):
    """
    Recursively queries the Reddit API, parses the titles of all hot articles,
    and counts occurrences of keywords from word_list (case-insensitive).

    Results are printed in descending order by count, then alphabetically.

    Args:
        subreddit (str): The subreddit to query.
        word_list (list): A list of keywords to count.
        after (str): The pagination parameter for recursion.
        word_count (dict): Dictionary tracking word occurrences.

    Returns:
        None
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {"User-Agent": "Custom-Reddit-API-Request"}
    params = {"limit": 100, "after": after}

    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)

    if response.status_code != 200:
        return

    data = response.json().get("data", {})
    posts = data.get("children", [])

    if not posts:
        return

    if not word_count:
        word_count = {word.lower(): 0 for word in word_list}

    for post in posts:
        title = post.get("data", {}).get("title", "").lower().split()
        for word in word_list:
            word_lower = word.lower()
            word_count[word_lower] += title.count(word_lower)

    after = data.get("after")
    if after:
        return count_words(subreddit, word_list, after, word_count)

    sorted_counts = sorted(
        [(word, count) for word, count in word_count.items() if count > 0],
        key=lambda x: (-x[1], x[0])
    )

    for word, count in sorted_counts:
        print("{}: {}".format(word, count))
