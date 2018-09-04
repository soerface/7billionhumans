import json
import re
from urllib import request
from bs4 import BeautifulSoup


def get_challenge(row):
    title = row.find('a').get_text()
    year, name = re.search(r'(\d{1,2}): (.*)', title).groups()
    cells = [td.get_text().strip() for td in row.select('td table td')]
    ocd = cells[::2]
    best_known = cells[1::2]
    assert 'Size' in ocd[0]
    assert 'Speed' in ocd[2]
    assert 'Shortest' in best_known[0]
    assert 'Fastest' in best_known[2]
    size_challenge = int(re.search('\d+', ocd[1]).group(0))
    speed_challenge = int(re.search('\d+', ocd[3]).group(0))
    shortest_known = int(re.search('\d+', best_known[1]).group(0))
    fastest_known = int(re.search('\d+', best_known[3]).group(0))

    assert shortest_known <= size_challenge
    assert fastest_known <= speed_challenge

    return {
        'year': int(year),
        'name': name,
        'size_challenge': size_challenge,
        'shortest_known': shortest_known,
        'speed_challenge': speed_challenge,
        'fastest_known': fastest_known,
    }


def main():
    res = request.urlopen('https://tomorrowcorporation.com/7billionhumansStats/')
    soup = BeautifulSoup(res.read(), 'lxml')
    rows = soup.find(class_='statEntries').find_all(class_='row')
    challenges = {get_challenge(row)['year']: get_challenge(row) for row in rows}
    with open('challenges.json', 'w') as f:
        json.dump(challenges, f, indent=2)


if __name__ == '__main__':
    main()
