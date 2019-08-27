#pragma version(1)
#pragma rs java_package_name(com.asus.camera.component)

int32_t inHeight;
float widthRatio;
float heightRatio;

rs_allocation aIn;

// Only support NV21(YUV_420) for source
void root(uchar4 *out, uint32_t x, uint32_t y) {
    // fetch nearest neighbor's YUV

    int Y_coordinateX = (int) (x / widthRatio);
    int Y_coordinateY = (int) (y / heightRatio);

    //  fetch even coordinate for x
    int V_coordinateX = (Y_coordinateX & ~1);
    int V_coordinateY = inHeight + (Y_coordinateY >> 1);

    int U_coordinateX = V_coordinateX + 1;
    int U_coordinateY = V_coordinateY;

    uchar yValue = rsGetElementAt_uchar(aIn, Y_coordinateX, Y_coordinateY);
    uchar vValue = rsGetElementAt_uchar(aIn, V_coordinateX, V_coordinateY);
    uchar uValue = rsGetElementAt_uchar(aIn, U_coordinateX, U_coordinateY);

    *out = rsYuvToRGBA_uchar4(yValue, uValue, vValue);
}
