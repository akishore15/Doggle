FROM python:3.11-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libxcb1 \
        libxcb-xinerama0 \
        libxcb-icccm4 \
        libxcb-image0 \
        libxcb-keysyms1 \
        libxcb-randr0 \
        libxcb-render-util0 \
        libxcb-shape0 \
        libxcb-sync1 \
        libxcb-xfixes0 \
        libxcomposite1 \
        libxcursor1 \
        libxdamage1 \
        libxext6 \
        libxfixes3 \
        libxi6 \
        libxrandr2 \
        libxrender1 \
        libxss1 \
        libxtst6 \
        libglib2.0-0 \
        libnss3 \
        libatk-bridge2.0-0 \
        libgtk-3-0 \
        libasound2 \
        libdbus-1-3 \
        libfontconfig1 \
        libfreetype6 \
        libxkbcommon0 \
        libgl1-mesa-dev \
        ca-certificates \
        && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir PyQt5==5.15.9
WORKDIR /app
COPY pasted-content-2026-02-27T02-52-17.txt /app/main.py
ENV DISPLAY=${DISPLAY}
VOLUME ["/tmp/.X11-unix"]
ENTRYPOINT ["python", "/app/main.py"]