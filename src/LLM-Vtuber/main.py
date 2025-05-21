from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtGui import QGuiApplication
import sys


def main():
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load("src/LLM-Vtuber/views/Main.qml")
    sys.exit(app.exec())

if __name__ == "__main__":
    main()
