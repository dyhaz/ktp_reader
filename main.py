try:
    from PIL import Image
except ImportError:
    import Image
import cv2
import pytesseract

img = cv2.imread("image.jfif")
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

_, thres = cv2.threshold(gray, 127, 255, cv2.THRESH_TRUNC)

print(pytesseract.image_to_string(thres, lang="ind").encode('utf-8'))

