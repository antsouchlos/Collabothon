import argparse
import requests
import json

_oauth2_token = "ya29.a0AfB_byCKgcinUm0zZS_gCBKmNNiuoTuPXtGNPXZle6syXDOZLSn8HMJxFzbkpafRTAmwGsswmdoCNZ7qfei5b-PfM1K1uLBIQYwmDIfbk6ebVhyMI-5XkRL4VyfW8R7fZRx59_ellBkQeRzCR3NzLsnEFCDODwUEIM6XaCgYKAVISARISFQGOcNnCHKbYs6UWsbhAoDBg6-fixw0171"
_bucket_name = "carbongecko"


def upload_image(name: str, filepath: str):
    api_url = f"https://storage.googleapis.com/upload/storage/v1/b/{_bucket_name}/o"
    headers = {"Authorization": f"Bearer {_oauth2_token}",
               "Content-Type": "image/png"}
    params = {"name": name}

    with open(filepath, 'rb') as f:
        data = f.read()
        response = requests.post(api_url, headers=headers, params=params,
                                 data=data)
        print(response)


def main():
    upload_image(name="test_image", filepath="/home/andreas/Desktop/gecko.png")


if __name__ == "__main__":
    main()
