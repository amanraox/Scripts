import requests
import time

def make_repos_private(username, token):
    headers = {
        'Authorization': f'token {token}',
        'Accept': 'application/vnd.github.v3+json'
    }

    # Get list of repositories
    response = requests.get(f'https://api.github.com/users/{username}/repos', headers=headers)
    repos = response.json()

    # Make each repository private
    for repo in repos:
        repo_name = repo['name']
        print(f'Making repository {repo_name} private...')
        requests.patch(f'https://api.github.com/repos/{username}/{repo_name}', headers=headers, json={'private': True})
        print(f'Repository {repo_name} is now private.')

if __name__ == "__main__":
    # Enter your GitHub username and personal access token
    username = 'amanraox'
    token = ''

    make_repos_private(username, token)
    time.sleep(3)
    make_repos_private(username, token)

