import qrcode
import qrcode.image.svg
import argparse


def main():
    # Parse command line arguments
    
    parser = argparse.ArgumentParser(
                    prog='create_qr_code',
                    description='Create qr code from link')

    parser.add_argument('-l', '--link', required=True)
    parser.add_argument('-o', '--output', required=True)

    args = parser.parse_args()

    # Create qr code

    img = qrcode.make(args.link, image_factory=qrcode.image.svg.SvgImage)
    with open(args.output, 'wb') as qr:
        img.save(qr)


if __name__=="__main__":
    main()

