import requests
import time


def make_repos_public(username, token):
    headers = {
        'Authorization': f'token {token}',
        'Accept': 'application/vnd.github.v3+json'
    }

    # Get list of repositories
    response = requests.get(f'https://api.github.com/user/repos?type=private', headers=headers)
    repos = response.json()

    # Make each private repository public
    for repo in repos:
        repo_name = repo['name']
        print(f'Making repository {repo_name} public...')
        requests.patch(f'https://api.github.com/repos/{username}/{repo_name}', headers=headers, json={'private': False})
        print(f'Repository {repo_name} is now public.')

if __name__ == "__main__":
    # Enter your GitHub username and personal access token
    username = 'amanraox'
    token = ''

    make_repos_public(username, token)
    time.sleep(3)
    make_repos_public(username, token)
