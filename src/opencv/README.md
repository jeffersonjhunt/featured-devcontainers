# OpenCV with CUDA

Installs [OpenCV](https://opencv.org) with [CUDA](https://developer.nvidia.com) and optional support for [Python3](https://www.python.org), [GKT3](https://www.gtk.org) and various media decoders/encoders.

`opencv` (Open Source Computer Vision Library) is an open source computer vision and machine learning software library.

`cuda` is a parallel computing platform and programming model developed by NVIDIA for general computing on graphical processing units (GPUs).

```
    "features": {
        "ghcr.io/jeffersonjhunt/features/opencv:1": {
            "cleanup": false
        }	
    }
```

## Options

| Options      | Description                       | Type    | Default Value |
| ------------ | --------------------------------- | ------- | ------------- |
| version      | Version of OpenCV to isntall      | string  | 4.8.1         |
| cleanUp      | Remove source/tools after install | boolean | true          |
| withCuda     | Add CUDA support?                 | boolean | true          |
| withPython3  | Add Python3 Support?              | boolean | false         |
| withGtk3     | Add GTK3 Support?                 | boolean | false         |
| withJpeg     | Add JPEG Support?                 | boolean | false         |
| withOpenExr  | Add OpenEXR Support?              | boolean | false         |
| withPng      | Add PNG Support?                  | boolean | false         |
| withTiff     | Add TIFF Support?                 | boolean | false         |
| withWebP     | Add WebP Support?                 | boolean | false         |

## OS Support

This Feature should work on recent versions of Debian/Ubuntu, RedHat Enterprise Linux, Fedora, RockyLinux, and Alpine Linux.
