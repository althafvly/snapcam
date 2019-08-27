.class public Lcom/android/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/exif/ExifInterface$GpsDifferential;,
        Lcom/android/camera/exif/ExifInterface$GpsTrackRef;,
        Lcom/android/camera/exif/ExifInterface$GpsSpeedRef;,
        Lcom/android/camera/exif/ExifInterface$GpsMeasureMode;,
        Lcom/android/camera/exif/ExifInterface$GpsStatus;,
        Lcom/android/camera/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/android/camera/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/android/camera/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/android/camera/exif/ExifInterface$SubjectDistance;,
        Lcom/android/camera/exif/ExifInterface$Sharpness;,
        Lcom/android/camera/exif/ExifInterface$Saturation;,
        Lcom/android/camera/exif/ExifInterface$Contrast;,
        Lcom/android/camera/exif/ExifInterface$GainControl;,
        Lcom/android/camera/exif/ExifInterface$SceneType;,
        Lcom/android/camera/exif/ExifInterface$FileSource;,
        Lcom/android/camera/exif/ExifInterface$SensingMethod;,
        Lcom/android/camera/exif/ExifInterface$LightSource;,
        Lcom/android/camera/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/android/camera/exif/ExifInterface$SceneCapture;,
        Lcom/android/camera/exif/ExifInterface$WhiteBalance;,
        Lcom/android/camera/exif/ExifInterface$ExposureMode;,
        Lcom/android/camera/exif/ExifInterface$ColorSpace;,
        Lcom/android/camera/exif/ExifInterface$Flash;,
        Lcom/android/camera/exif/ExifInterface$MeteringMode;,
        Lcom/android/camera/exif/ExifInterface$ExposureProgram;,
        Lcom/android/camera/exif/ExifInterface$PlanarConfiguration;,
        Lcom/android/camera/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/android/camera/exif/ExifInterface$ResolutionUnit;,
        Lcom/android/camera/exif/ExifInterface$Compression;,
        Lcom/android/camera/exif/ExifInterface$YCbCrPositioning;,
        Lcom/android/camera/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/camera/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    nop

    .line 77
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 78
    nop

    .line 79
    const/16 v1, 0x101

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 80
    nop

    .line 81
    const/16 v1, 0x102

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 82
    nop

    .line 83
    const/16 v1, 0x103

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 84
    nop

    .line 85
    const/16 v1, 0x106

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 86
    nop

    .line 87
    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 88
    nop

    .line 89
    const/16 v1, 0x10f

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    .line 90
    nop

    .line 91
    const/16 v1, 0x110

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    .line 92
    nop

    .line 93
    const/16 v1, 0x111

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 94
    nop

    .line 95
    const/16 v1, 0x112

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 96
    nop

    .line 97
    const/16 v1, 0x115

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 98
    nop

    .line 99
    const/16 v1, 0x116

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 100
    nop

    .line 101
    const/16 v1, 0x117

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 102
    nop

    .line 103
    const/16 v1, 0x11a

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 104
    nop

    .line 105
    const/16 v1, 0x11b

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 106
    nop

    .line 107
    const/16 v1, 0x11c

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 108
    nop

    .line 109
    const/16 v1, 0x128

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 110
    nop

    .line 111
    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 112
    nop

    .line 113
    const/16 v1, 0x131

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 114
    nop

    .line 115
    const/16 v1, 0x132

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 116
    nop

    .line 117
    const/16 v1, 0x13b

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_ARTIST:I

    .line 118
    nop

    .line 119
    const/16 v1, 0x13e

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 120
    nop

    .line 121
    const/16 v1, 0x13f

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 122
    nop

    .line 123
    const/16 v1, 0x211

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 124
    nop

    .line 125
    const/16 v1, 0x212

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 126
    nop

    .line 127
    const/16 v1, 0x213

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 128
    nop

    .line 129
    const/16 v1, 0x214

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 130
    nop

    .line 131
    const/16 v1, -0x7d68

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 132
    nop

    .line 133
    const/16 v1, -0x7897

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 134
    nop

    .line 135
    const/16 v1, -0x77db

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 137
    nop

    .line 138
    const/4 v1, 0x1

    const/16 v2, 0x201

    invoke-static {v1, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 139
    nop

    .line 140
    const/16 v2, 0x202

    invoke-static {v1, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 142
    nop

    .line 143
    const/4 v2, 0x2

    const/16 v3, -0x7d66

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 144
    nop

    .line 145
    const/16 v3, -0x7d63

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 146
    nop

    .line 147
    const/16 v3, -0x77de

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 148
    nop

    .line 149
    const/16 v3, -0x77dc

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 150
    nop

    .line 151
    const/16 v3, -0x77d9

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 152
    nop

    .line 153
    const/16 v3, -0x77d8

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_OECF:I

    .line 154
    nop

    .line 155
    const/16 v3, -0x7000

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 156
    nop

    .line 157
    const/16 v3, -0x6ffd

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 158
    nop

    .line 159
    const/16 v3, -0x6ffc

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 160
    nop

    .line 161
    const/16 v3, -0x6eff

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 162
    nop

    .line 163
    const/16 v3, -0x6efe

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 164
    nop

    .line 165
    const/16 v3, -0x6dff

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 166
    nop

    .line 167
    const/16 v3, -0x6dfe

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 168
    nop

    .line 169
    const/16 v3, -0x6dfd

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 170
    nop

    .line 171
    const/16 v3, -0x6dfc

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 172
    nop

    .line 173
    const/16 v3, -0x6dfb

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 174
    nop

    .line 175
    const/16 v3, -0x6dfa

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 176
    nop

    .line 177
    const/16 v3, -0x6df9

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 178
    nop

    .line 179
    const/16 v3, -0x6df8

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 180
    nop

    .line 181
    const/16 v3, -0x6df7

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    .line 182
    nop

    .line 183
    const/16 v3, -0x6df6

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 184
    nop

    .line 185
    const/16 v3, -0x6dec

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 186
    nop

    .line 187
    const/16 v3, -0x6d84

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 188
    nop

    .line 189
    const/16 v3, -0x6d7a

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 190
    nop

    .line 191
    const/16 v3, -0x6d70

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 192
    nop

    .line 193
    const/16 v3, -0x6d6f

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 194
    nop

    .line 195
    const/16 v3, -0x6d6e

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 196
    nop

    .line 197
    const/16 v3, -0x6000

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 198
    nop

    .line 199
    const/16 v3, -0x5fff

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 200
    nop

    .line 201
    const/16 v3, -0x5ffe

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 202
    nop

    .line 203
    const/16 v3, -0x5ffd

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 204
    nop

    .line 205
    const/16 v3, -0x5ffc

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 206
    nop

    .line 207
    const/16 v3, -0x5ffb

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 208
    nop

    .line 209
    const/16 v3, -0x5df5

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 210
    nop

    .line 211
    const/16 v3, -0x5df4

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 212
    nop

    .line 213
    const/16 v3, -0x5df2

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 214
    nop

    .line 215
    const/16 v3, -0x5df1

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 216
    nop

    .line 217
    const/16 v3, -0x5df0

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 218
    nop

    .line 219
    const/16 v3, -0x5dec

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 220
    nop

    .line 221
    const/16 v3, -0x5deb

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 222
    nop

    .line 223
    const/16 v3, -0x5de9

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 224
    nop

    .line 225
    const/16 v3, -0x5d00

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 226
    nop

    .line 227
    const/16 v3, -0x5cff

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 228
    nop

    .line 229
    const/16 v3, -0x5cfe

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 230
    nop

    .line 231
    const/16 v3, -0x5bff

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 232
    nop

    .line 233
    const/16 v3, -0x5bfe

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 234
    nop

    .line 235
    const/16 v3, -0x5bfd

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 236
    nop

    .line 237
    const/16 v3, -0x5bfc

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 238
    nop

    .line 239
    const/16 v3, -0x5bfb

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 240
    nop

    .line 241
    const/16 v3, -0x5bfa

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 242
    nop

    .line 243
    const/16 v3, -0x5bf9

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 244
    nop

    .line 245
    const/16 v3, -0x5bf8

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_CONTRAST:I

    .line 246
    nop

    .line 247
    const/16 v3, -0x5bf7

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SATURATION:I

    .line 248
    nop

    .line 249
    const/16 v3, -0x5bf6

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 250
    nop

    .line 251
    const/16 v3, -0x5bf5

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 252
    nop

    .line 253
    const/16 v3, -0x5bf4

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 254
    nop

    .line 255
    const/16 v3, -0x5be0

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 257
    nop

    .line 258
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 259
    nop

    .line 260
    invoke-static {v3, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 261
    nop

    .line 262
    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 263
    nop

    .line 264
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 265
    nop

    .line 266
    invoke-static {v3, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 267
    nop

    .line 268
    const/4 v2, 0x5

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 269
    nop

    .line 270
    const/4 v2, 0x6

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 271
    nop

    .line 272
    const/4 v2, 0x7

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 273
    nop

    .line 274
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 275
    nop

    .line 276
    const/16 v2, 0x9

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 277
    nop

    .line 278
    const/16 v2, 0xa

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 279
    nop

    .line 280
    const/16 v2, 0xb

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 281
    nop

    .line 282
    const/16 v2, 0xc

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 283
    nop

    .line 284
    const/16 v2, 0xd

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 285
    nop

    .line 286
    const/16 v2, 0xe

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 287
    nop

    .line 288
    const/16 v2, 0xf

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 289
    nop

    .line 290
    const/16 v2, 0x10

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 291
    nop

    .line 292
    const/16 v2, 0x11

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 293
    nop

    .line 294
    const/16 v2, 0x12

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 295
    nop

    .line 296
    const/16 v2, 0x13

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 297
    nop

    .line 298
    const/16 v2, 0x14

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 299
    nop

    .line 300
    const/16 v2, 0x15

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 301
    nop

    .line 302
    const/16 v2, 0x16

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 303
    nop

    .line 304
    const/16 v2, 0x17

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 305
    nop

    .line 306
    const/16 v2, 0x18

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 307
    nop

    .line 308
    const/16 v2, 0x19

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 309
    nop

    .line 310
    const/16 v2, 0x1a

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 311
    nop

    .line 312
    const/16 v2, 0x1b

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 313
    nop

    .line 314
    const/16 v2, 0x1c

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 315
    nop

    .line 316
    const/16 v2, 0x1d

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 317
    nop

    .line 318
    const/16 v2, 0x1e

    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 320
    nop

    .line 321
    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 329
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 341
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Lcom/android/camera/exif/ExifData;

    sget-object v1, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 1952
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1953
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1954
    const-string v0, "UTC"

    .line 1955
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 716
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 717
    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 2148
    if-eqz p0, :cond_0

    .line 2150
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    goto :goto_0

    .line 2151
    :catch_0
    move-exception v0

    .line 2155
    :cond_0
    :goto_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/android/camera/exif/Rational;Ljava/lang/String;)D
    .locals 10
    .param p0, "coordinate"    # [Lcom/android/camera/exif/Rational;
    .param p1, "reference"    # Ljava/lang/String;

    .line 1914
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1915
    .local v0, "degrees":D
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    .line 1916
    .local v2, "minutes":D
    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1917
    .local v4, "seconds":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double v6, v2, v6

    add-double/2addr v6, v0

    const-wide v8, 0x40ac200000000000L    # 3600.0

    div-double v8, v4, v8

    add-double/2addr v6, v8

    .line 1918
    .local v6, "result":D
    const-string v8, "S"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "W"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1921
    :cond_0
    return-wide v6

    .line 1919
    :cond_1
    :goto_0
    neg-double v8, v6

    return-wide v8

    .line 1922
    .end local v0    # "degrees":D
    .end local v2    # "minutes":D
    .end local v4    # "seconds":D
    .end local v6    # "result":D
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .line 350
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2139
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 2140
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 2141
    .local v3, "ret":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2142
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2143
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 2145
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 2442
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 2499
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .line 2478
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2481
    :cond_0
    const/4 v1, 0x0

    .line 2482
    .local v1, "flags":I
    invoke-static {}, Lcom/android/camera/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2483
    .local v2, "ifds":[I
    move v3, v1

    move v1, v0

    .local v1, "i":I
    .local v3, "flags":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 2484
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2485
    .local v6, "j":I
    aget v7, v2, v1

    if-ne v7, v6, :cond_1

    .line 2486
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 2487
    goto :goto_2

    .line 2484
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2483
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2491
    .end local v1    # "i":I
    :cond_3
    return v3

    .line 2479
    .end local v2    # "ifds":[I
    .end local v3    # "flags":I
    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .line 1864
    rem-int/lit16 p0, p0, 0x168

    .line 1865
    if-gez p0, :cond_0

    .line 1866
    add-int/lit16 p0, p0, 0x168

    .line 1868
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1869
    const/4 v0, 0x1

    return v0

    .line 1870
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1871
    const/4 v0, 0x6

    return v0

    .line 1872
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1873
    const/4 v0, 0x3

    return v0

    .line 1875
    :cond_3
    const/16 v0, 0x8

    return v0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 2
    .param p0, "orientation"    # S

    .line 1886
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1896
    return v1

    .line 1894
    :cond_0
    const/16 v0, 0x10e

    return v0

    .line 1890
    :cond_1
    const/16 v0, 0x5a

    return v0

    .line 1892
    :cond_2
    const/16 v0, 0xb4

    return v0

    .line 1888
    :cond_3
    return v1
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 365
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .line 358
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .line 2495
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 22

    .line 2175
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 2178
    .local v2, "ifdAllowedIfds":[I
    invoke-static {v2}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2179
    .local v3, "ifdFlags":I
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v6, 0x20000

    or-int v7, v3, v6

    const/4 v8, 0x0

    or-int/2addr v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2181
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v7, 0x40000

    or-int v9, v3, v7

    const/4 v10, 0x1

    or-int/2addr v9, v10

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2183
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    or-int v9, v3, v7

    or-int/2addr v9, v10

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v9, 0x30000

    or-int v11, v3, v9

    const/4 v12, 0x3

    or-int/2addr v11, v12

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2193
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int v11, v3, v9

    or-int/2addr v11, v1

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    or-int v11, v3, v9

    or-int/2addr v11, v10

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v11, 0x50000

    or-int v13, v3, v11

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    or-int v13, v3, v11

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    or-int v13, v3, v9

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    or-int v13, v3, v7

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2209
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    or-int v13, v3, v7

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int v13, v3, v9

    or-int/lit16 v13, v13, 0x300

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2215
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int v13, v3, v11

    or-int/2addr v13, v1

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int v13, v3, v11

    or-int/lit8 v13, v13, 0x6

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    or-int v13, v3, v11

    or-int/2addr v13, v12

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    or-int v13, v3, v11

    or-int/lit8 v13, v13, 0x6

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int v13, v3, v6

    or-int/lit8 v13, v13, 0x14

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_ARTIST:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    or-int v13, v3, v6

    or-int/2addr v13, v8

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v4, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    or-int v13, v3, v7

    or-int/2addr v13, v10

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    new-array v4, v10, [I

    aput v10, v4, v8

    .line 2245
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    .line 2246
    .local v5, "ifdFlags1":I
    iget-object v13, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v14, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int v15, v5, v7

    or-int/2addr v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v13, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v14, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    or-int v15, v5, v7

    or-int/2addr v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    new-array v13, v10, [I

    aput v1, v13, v8

    .line 2254
    .local v13, "exifAllowedIfds":[I
    invoke-static {v13}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    .line 2255
    .local v14, "exifFlags":I
    iget-object v15, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v16, 0x70000

    or-int v17, v14, v16

    const/16 v18, 0x4

    or-int/lit8 v1, v17, 0x4

    invoke-virtual {v15, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    or-int v15, v14, v16

    or-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v15, v14, v9

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    or-int v15, v14, v16

    or-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int v15, v14, v7

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    or-int v15, v14, v7

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0xd

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x14

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x14

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int v15, v14, v6

    or-int/lit8 v15, v15, 0x21

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    or-int v15, v14, v11

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    or-int v15, v14, v9

    or-int/2addr v15, v10

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    or-int v15, v14, v6

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int v15, v14, v9

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_OECF:I

    or-int v15, v14, v16

    or-int/2addr v15, v8

    invoke-virtual {v1, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v15, 0xa0000

    or-int v17, v14, v15

    or-int/lit8 v6, v17, 0x1

    invoke-virtual {v1, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    or-int v12, v14, v15

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    or-int v12, v14, v15

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    or-int v12, v14, v9

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v12, v14, v9

    const/16 v17, 0x2

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int v12, v14, v16

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    or-int v12, v14, v16

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    or-int v12, v14, v11

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_CONTRAST:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SATURATION:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    or-int v12, v14, v16

    or-int/2addr v12, v8

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2365
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    or-int v12, v14, v9

    or-int/2addr v12, v10

    invoke-virtual {v1, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    iget-object v1, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v7, v14

    or-int/2addr v7, v10

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2370
    new-array v1, v10, [I

    aput v18, v1, v8

    .line 2373
    .local v1, "gpsAllowedIfds":[I
    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    .line 2374
    .local v6, "gpsFlags":I
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v17, 0x10000

    or-int v20, v6, v17

    or-int/lit8 v9, v20, 0x4

    invoke-virtual {v7, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2376
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int v18, v6, v12

    const/16 v19, 0x2

    or-int/lit8 v8, v18, 0x2

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2378
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    or-int v9, v6, v12

    or-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v9, v6, v15

    const/4 v12, 0x3

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    or-int v9, v6, v15

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int v9, v6, v17

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2388
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v9, v6, v11

    const/4 v12, 0x3

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2390
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v15, 0x0

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    or-int v12, v6, v9

    const/4 v15, 0x2

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    or-int v12, v6, v9

    or-int/lit8 v9, v12, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v15, 0x0

    or-int/2addr v12, v15

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v12, v9

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v9, 0x20000

    or-int v12, v6, v9

    const/4 v9, 0x2

    or-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    or-int v9, v6, v11

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    or-int v9, v6, v16

    const/4 v11, 0x0

    or-int/2addr v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    or-int v9, v6, v16

    or-int/2addr v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v9, 0x20000

    or-int v11, v6, v9

    or-int/lit8 v9, v11, 0xb

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v7, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v9, 0x30000

    or-int/2addr v9, v6

    or-int/lit8 v9, v9, 0xb

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2433
    new-array v7, v10, [I

    const/4 v8, 0x0

    const/4 v9, 0x3

    aput v9, v7, v8

    .line 2436
    .local v7, "interopAllowedIfds":[I
    invoke-static {v7}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    .line 2437
    .local v9, "interopFlags":I
    iget-object v10, v0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/2addr v8, v12

    invoke-virtual {v10, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2439
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 6
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .line 2467
    invoke-static {}, Lcom/android/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2468
    .local v0, "ifds":[I
    invoke-static {p0}, Lcom/android/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2469
    .local v1, "ifdFlags":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 2470
    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 2471
    return v5

    .line 2469
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2474
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .line 1486
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/android/camera/exif/Rational;
    .locals 9
    .param p0, "value"    # D

    .line 2127
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2128
    double-to-int v0, p0

    .line 2129
    .local v0, "degrees":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    .line 2130
    .end local p0    # "value":D
    .local v1, "value":D
    double-to-int p0, v1

    .line 2131
    .local p0, "minutes":I
    int-to-double v3, p0

    sub-double v3, v1, v3

    const-wide v5, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v3, v5

    .line 2132
    .end local v1    # "value":D
    .local v3, "value":D
    double-to-int p1, v3

    .line 2133
    .local p1, "seconds":I
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/camera/exif/Rational;

    new-instance v2, Lcom/android/camera/exif/Rational;

    int-to-long v5, v0

    const-wide/16 v7, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/exif/Rational;

    int-to-long v5, p0

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/exif/Rational;

    int-to-long v5, p1

    const-wide/16 v7, 0x64

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    return-object v1
.end method


# virtual methods
.method public addAperture(Lcom/android/camera/exif/Rational;)V
    .locals 1
    .param p1, "r"    # Lcom/android/camera/exif/Rational;

    .line 2016
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2017
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2020
    :cond_0
    return-void
.end method

.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "timestamp"    # J
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .line 1968
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1977
    :cond_0
    return v1

    .line 1970
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1971
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1972
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_2

    .line 1973
    return v1

    .line 1975
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1976
    .end local v0    # "t":Lcom/android/camera/exif/ExifTag;
    nop

    .line 1979
    const/4 v0, 0x1

    return v0
.end method

.method public addExposureTime(Lcom/android/camera/exif/Rational;)V
    .locals 1
    .param p1, "r"    # Lcom/android/camera/exif/Rational;

    .line 2024
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2025
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 2026
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2028
    :cond_0
    return-void
.end method

.method public addFlashTag(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 1984
    if-eqz p1, :cond_0

    .line 1985
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    goto :goto_0

    .line 1987
    .end local v0    # "t":Lcom/android/camera/exif/ExifTag;
    :cond_0
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1989
    .restart local v0    # "t":Lcom/android/camera/exif/ExifTag;
    :goto_0
    if-eqz v0, :cond_1

    .line 1990
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1992
    :cond_1
    return-void
.end method

.method public addFocalLength(Lcom/android/camera/exif/Rational;)V
    .locals 1
    .param p1, "r"    # Lcom/android/camera/exif/Rational;

    .line 1996
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1997
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2000
    :cond_0
    return-void
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 11
    .param p1, "timestamp"    # J

    .line 2088
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2089
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2090
    return v1

    .line 2092
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2093
    iget-object v2, p0, Lcom/android/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2094
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/camera/exif/Rational;

    new-instance v4, Lcom/android/camera/exif/Rational;

    iget-object v5, p0, Lcom/android/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    .line 2095
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/android/camera/exif/Rational;

    iget-object v5, p0, Lcom/android/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    .line 2096
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-instance v6, Lcom/android/camera/exif/Rational;

    iget-object v9, p0, Lcom/android/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v10, 0xd

    .line 2097
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    aput-object v6, v3, v4

    .line 2094
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2099
    if-nez v0, :cond_1

    .line 2100
    return v1

    .line 2102
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2103
    return v5
.end method

.method public addGpsTags(DD)Z
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 2063
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/android/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/camera/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2064
    .local v0, "latTag":Lcom/android/camera/exif/ExifTag;
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/android/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 2065
    .local v1, "longTag":Lcom/android/camera/exif/ExifTag;
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 2066
    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    const-string v5, "N"

    goto :goto_0

    .line 2067
    :cond_0
    const-string v5, "S"

    .line 2065
    :goto_0
    invoke-virtual {p0, v2, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 2068
    .local v2, "latRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 2069
    cmpl-double v3, p3, v3

    if-ltz v3, :cond_1

    const-string v3, "E"

    goto :goto_1

    .line 2070
    :cond_1
    const-string v3, "W"

    .line 2068
    :goto_1
    invoke-virtual {p0, v5, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 2071
    .local v3, "longRefTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    .line 2074
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2075
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2076
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2077
    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2078
    const/4 v4, 0x1

    return v4

    .line 2072
    :cond_3
    :goto_2
    const/4 v4, 0x0

    return v4
.end method

.method public addISO(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2032
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2033
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2036
    :cond_0
    return-void
.end method

.method public addMakeAndModelTag()Z
    .locals 5

    .line 2107
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2108
    .local v0, "maker":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    const-string v0, "QCOM-AA"

    .line 2111
    :cond_0
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 2112
    .local v1, "t":Lcom/android/camera/exif/ExifTag;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2113
    return v2

    .line 2115
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2116
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 2117
    if-nez v1, :cond_2

    .line 2118
    return v2

    .line 2120
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2121
    const/4 v2, 0x1

    return v2
.end method

.method public addOrientationTag(I)Z
    .locals 3
    .param p1, "orientation"    # I

    .line 2039
    const/4 v0, 0x1

    .line 2040
    .local v0, "value":I
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 2041
    const/4 v0, 0x6

    goto :goto_0

    .line 2042
    :cond_0
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 2043
    const/4 v0, 0x3

    goto :goto_0

    .line 2044
    :cond_1
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_2

    .line 2045
    const/16 v0, 0x8

    .line 2047
    :cond_2
    :goto_0
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 2048
    .local v1, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v1, :cond_3

    .line 2049
    const/4 v2, 0x0

    return v2

    .line 2051
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2052
    const/4 v2, 0x1

    return v2
.end method

.method public addWhiteBalanceMode(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2004
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2005
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    goto :goto_0

    .line 2007
    .end local v0    # "t":Lcom/android/camera/exif/ExifTag;
    :cond_0
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 2009
    .restart local v0    # "t":Lcom/android/camera/exif/ExifTag;
    :goto_0
    if-eqz v0, :cond_1

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2012
    :cond_1
    return-void
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 1501
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1502
    .local v0, "info":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 1505
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 1506
    .local v8, "type":S
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 1507
    .local v9, "definedCount":I
    if-eqz v9, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1508
    .local v7, "hasDefinedCount":Z
    :goto_1
    invoke-static {v0, p2}, Lcom/android/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1509
    return-object v1

    .line 1511
    :cond_2
    new-instance v10, Lcom/android/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v10

    move v4, v8

    move v5, v9

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 1512
    .local v2, "t":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v2, p3}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1513
    return-object v1

    .line 1515
    :cond_3
    return-object v2

    .line 1503
    .end local v2    # "t":Lcom/android/camera/exif/ExifTag;
    .end local v7    # "hasDefinedCount":Z
    .end local v8    # "type":S
    .end local v9    # "definedCount":I
    :cond_4
    :goto_2
    return-object v1
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 1526
    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1527
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;
    .locals 11
    .param p1, "tagId"    # I

    .line 1531
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1532
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1533
    const/4 v1, 0x0

    return-object v1

    .line 1535
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    .line 1536
    .local v1, "type":S
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v8

    .line 1537
    .local v8, "definedCount":I
    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1538
    .local v7, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v9

    .line 1539
    .local v9, "ifdId":I
    new-instance v10, Lcom/android/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v10

    move v4, v1

    move v5, v8

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 1540
    .local v2, "t":Lcom/android/camera/exif/ExifTag;
    return-object v2
.end method

.method public clearExif()V
    .locals 2

    .line 788
    new-instance v0, Lcom/android/camera/exif/ExifData;

    sget-object v1, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 789
    return-void
.end method

.method public deleteTag(I)V
    .locals 1
    .param p1, "tagId"    # I

    .line 1618
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1619
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->deleteTag(II)V

    .line 1620
    return-void
.end method

.method public deleteTag(II)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1609
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/exif/ExifData;->removeTag(SI)V

    .line 1610
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1137
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/exif/ExifTag;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 1103
    .local v0, "tempData":Lcom/android/camera/exif/ExifData;
    new-instance v1, Lcom/android/camera/exif/ExifData;

    sget-object v2, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1107
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1108
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 1109
    invoke-direct {p0, v1, v2}, Lcom/android/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1110
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1111
    .local v3, "imageBytes":[B
    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 1112
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1113
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    .end local v3    # "imageBytes":[B
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1120
    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 1121
    goto :goto_1

    .line 1118
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v3

    .line 1115
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1116
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1120
    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    throw v3

    .line 1123
    .end local v0    # "tempData":Lcom/android/camera/exif/ExifData;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_1
    return-void
.end method

.method public getActualTagCount(II)I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1437
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1438
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1439
    const/4 v1, 0x0

    return v1

    .line 1441
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    return v1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2
    .param p1, "tagId"    # I

    .line 1420
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1421
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1422
    const/4 v1, 0x0

    return v1

    .line 1424
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    return v1
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .line 1452
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1453
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1454
    const/4 v1, -0x1

    return v1

    .line 1456
    :cond_0
    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    return v1
.end method

.method public getDefinedTagType(I)S
    .locals 2
    .param p1, "tagId"    # I

    .line 1467
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1468
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1469
    const/4 v1, -0x1

    return v1

    .line 1471
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    return v1
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 965
    if-eqz p1, :cond_0

    .line 968
    new-instance v0, Lcom/android/camera/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/camera/exif/ExifInterface;)V

    .line 969
    .local v0, "eos":Lcom/android/camera/exif/ExifOutputStream;
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifOutputStream;->setExifData(Lcom/android/camera/exif/ExifData;)V

    .line 970
    return-object v0

    .line 966
    .end local v0    # "eos":Lcom/android/camera/exif/ExifOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 986
    if-eqz p1, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 995
    nop

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 994
    throw v1

    .line 987
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .line 1936
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 1937
    .local v0, "latitude":[Lcom/android/camera/exif/Rational;
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1938
    .local v1, "latitudeRef":Ljava/lang/String;
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/camera/exif/Rational;

    move-result-object v2

    .line 1939
    .local v2, "longitude":[Lcom/android/camera/exif/Rational;
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1940
    .local v3, "longitudeRef":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    array-length v4, v2

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 1944
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 1945
    .local v4, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1946
    const/4 v5, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1947
    return-object v4

    .line 1942
    .end local v4    # "latLon":[D
    :cond_1
    :goto_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getTag(I)Lcom/android/camera/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1195
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/android/camera/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1180
    invoke-static {p2}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    const/4 v0, 0x0

    return-object v0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-static {p1}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/exif/ExifData;->getTag(SI)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I

    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1299
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1287
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1288
    .local v0, "l":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    return-object v1

    .line 1289
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1375
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1363
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1364
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1365
    const/4 v1, 0x0

    return-object v1

    .line 1367
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    return-object v1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 10
    .param p1, "tagId"    # S

    .line 1684
    invoke-static {}, Lcom/android/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 1685
    .local v0, "ifds":[I
    array-length v1, v0

    new-array v1, v1, [I

    .line 1686
    .local v1, "defs":[I
    const/4 v2, 0x0

    .line 1687
    .local v2, "counter":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 1688
    .local v3, "infos":Landroid/util/SparseIntArray;
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v2

    move v2, v5

    .end local v2    # "counter":I
    .local v6, "counter":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v7, v0, v2

    .line 1689
    .local v7, "i":I
    invoke-static {v7, p1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    .line 1690
    .local v8, "def":I
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-eqz v9, :cond_0

    .line 1691
    add-int/lit8 v9, v6, 0x1

    .local v9, "counter":I
    aput v8, v1, v6

    .line 1688
    .end local v6    # "counter":I
    .end local v7    # "i":I
    .end local v8    # "def":I
    move v6, v9

    .end local v9    # "counter":I
    .restart local v6    # "counter":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1694
    :cond_1
    if-nez v6, :cond_2

    .line 1695
    const/4 v2, 0x0

    return-object v2

    .line 1698
    :cond_2
    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    return-object v2
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2162
    invoke-direct {p0}, Lcom/android/camera/exif/ExifInterface;->initTagInfo()V

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1280
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1269
    .local v0, "l":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 1270
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1356
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1344
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1345
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1346
    const/4 v1, 0x0

    return-object v1

    .line 1348
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1261
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1249
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    .line 1250
    .local v0, "l":[J
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    new-instance v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 1251
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1337
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1325
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1326
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1327
    const/4 v1, 0x0

    return-object v1

    .line 1329
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(I)Lcom/android/camera/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1318
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValue(II)Lcom/android/camera/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/android/camera/exif/Rational;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 1307
    .local v0, "l":[Lcom/android/camera/exif/Rational;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1310
    :cond_0
    new-instance v1, Lcom/android/camera/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/android/camera/exif/Rational;-><init>(Lcom/android/camera/exif/Rational;)V

    return-object v1

    .line 1308
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagRationalValues(I)[Lcom/android/camera/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1394
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/camera/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/android/camera/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1382
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1383
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1384
    const/4 v1, 0x0

    return-object v1

    .line 1386
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1242
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1231
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1232
    const/4 v1, 0x0

    return-object v1

    .line 1234
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I

    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1218
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1205
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .param p1, "ifdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .param p1, "tagId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1758
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1760
    .local v0, "thumb":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1761
    .end local v0    # "thumb":[B
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    .line 1764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    .line 1780
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3
    .param p1, "tagId"    # I

    .line 1404
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1406
    .local v0, "info":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1407
    return v1

    .line 1409
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    if-eqz p1, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 743
    .local v0, "d":Lcom/android/camera/exif/ExifData;
    :try_start_0
    new-instance v1, Lcom/android/camera/exif/ExifReader;

    invoke-direct {v1, p0}, Lcom/android/camera/exif/ExifReader;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/camera/exif/ExifData;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 746
    nop

    .line 747
    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    .line 748
    return-void

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Lcom/android/camera/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    .end local v0    # "d":Lcom/android/camera/exif/ExifData;
    .end local v1    # "e":Lcom/android/camera/exif/ExifInvalidFormatException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 3
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    if-eqz p1, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    nop

    .line 770
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 771
    return-void

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 768
    throw v1

    .line 760
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExif([B)V
    .locals 1
    .param p1, "jpeg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 728
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1846
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1
    .param p1, "tagId"    # I

    .line 1742
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1743
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .line 1749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1750
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/exif/ExifTag;>;"
    move-object/from16 v1, p0

    .line 1015
    const/4 v2, 0x0

    .line 1016
    .local v2, "file":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    move-object v3, v0

    .line 1019
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v4, "temp":Ljava/io/File;
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    .line 1023
    move-object v6, v0

    .line 1025
    .local v6, "parser":Lcom/android/camera/exif/ExifParser;
    :try_start_2
    invoke-static {v3, v1}, Lcom/android/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifParser;

    move-result-object v0
    :try_end_2
    .catch Lcom/android/camera/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1028
    .end local v6    # "parser":Lcom/android/camera/exif/ExifParser;
    .local v0, "parser":Lcom/android/camera/exif/ExifParser;
    nop

    .line 1029
    :try_start_3
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v6

    int-to-long v13, v6

    .line 1032
    .local v13, "exifSize":J
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1033
    const/4 v3, 0x0

    .line 1036
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v6

    .line 1037
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    move-wide v15, v6

    .line 1038
    .local v15, "fileLength":J
    cmp-long v6, v15, v13

    if-ltz v6, :cond_0

    .line 1043
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    move-wide v11, v13

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1047
    .local v6, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v7, p2

    :try_start_4
    invoke-virtual {v1, v6, v7}, Lcom/android/camera/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "parser":Lcom/android/camera/exif/ExifParser;
    .end local v4    # "temp":Ljava/io/File;
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .end local v13    # "exifSize":J
    .end local v15    # "fileLength":J
    move v0, v8

    .line 1052
    .local v0, "ret":Z
    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1053
    nop

    .line 1052
    nop

    .line 1054
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1055
    return v0

    .line 1039
    .local v0, "parser":Lcom/android/camera/exif/ExifParser;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v13    # "exifSize":J
    .restart local v15    # "fileLength":J
    :cond_0
    move-object/from16 v7, p2

    :try_start_5
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Filesize changed during operation"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1026
    .end local v0    # "parser":Lcom/android/camera/exif/ExifParser;
    .end local v13    # "exifSize":J
    .end local v15    # "fileLength":J
    .local v6, "parser":Lcom/android/camera/exif/ExifParser;
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    move-object v8, v0

    .line 1027
    .local v0, "e":Lcom/android/camera/exif/ExifInvalidFormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid exif format : "

    invoke-direct {v8, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1048
    .end local v0    # "e":Lcom/android/camera/exif/ExifInvalidFormatException;
    .end local v4    # "temp":Ljava/io/File;
    .end local v6    # "parser":Lcom/android/camera/exif/ExifParser;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1052
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1048
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1052
    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_0
    move-object/from16 v7, p2

    goto :goto_3

    .line 1048
    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    :goto_1
    move-object/from16 v7, p2

    .line 1049
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1050
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1052
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/exif/ExifTag;>;"
    const/4 v0, 0x0

    .line 1074
    .local v0, "mod":Lcom/android/camera/exif/ExifModifier;
    :try_start_0
    new-instance v1, Lcom/android/camera/exif/ExifModifier;

    invoke-direct {v1, p1, p0}, Lcom/android/camera/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/android/camera/exif/ExifInterface;)V

    move-object v0, v1

    .line 1075
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/exif/ExifTag;

    .line 1076
    .local v2, "t":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifModifier;->modifyTag(Lcom/android/camera/exif/ExifTag;)V

    .line 1077
    .end local v2    # "t":Lcom/android/camera/exif/ExifTag;
    goto :goto_0

    .line 1078
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifModifier;->commit()Z

    move-result v1
    :try_end_0
    .catch Lcom/android/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Lcom/android/camera/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .line 1834
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1835
    .local v0, "thumbnail":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1836
    const/4 v1, 0x0

    return v1

    .line 1838
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    return v1
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1
    .param p1, "thumb"    # [B

    .line 1821
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1822
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1823
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 780
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/exif/ExifTag;>;"
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->clearExif()V

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 782
    return-void
.end method

.method public setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;
    .locals 1
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;

    .line 1586
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->mData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifData;->addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 15
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I
    .param p3, "tagType"    # S
    .param p4, "defaultComponentCount"    # S
    .param p5, "allowedIfds"    # [I

    move/from16 v0, p2

    .line 1638
    move-object/from16 v1, p5

    sget-object v2, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 1639
    return v3

    .line 1641
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/camera/exif/ExifTag;->isValidType(S)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1642
    move/from16 v2, p1

    invoke-static {v0, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v4

    .line 1643
    .local v4, "tagDef":I
    if-ne v4, v3, :cond_1

    .line 1644
    return v3

    .line 1646
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v5

    .line 1647
    .local v5, "otherDefs":[I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1649
    .local v6, "infos":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .line 1650
    .local v7, "defaultCheck":Z
    array-length v8, v1

    const/4 v9, 0x0

    move v10, v7

    move v7, v9

    .end local v7    # "defaultCheck":Z
    .local v10, "defaultCheck":Z
    :goto_0
    if-ge v7, v8, :cond_4

    aget v11, v1, v7

    .line 1651
    .local v11, "i":I
    if-ne v0, v11, :cond_2

    .line 1652
    const/4 v10, 0x1

    .line 1654
    :cond_2
    invoke-static {v11}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1655
    return v3

    .line 1650
    .end local v11    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1658
    :cond_4
    if-nez v10, :cond_5

    .line 1659
    return v3

    .line 1662
    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v7

    .line 1664
    .local v7, "ifdFlags":I
    if-eqz v5, :cond_7

    .line 1665
    array-length v8, v5

    :goto_1
    if-ge v9, v8, :cond_7

    aget v11, v5, v9

    .line 1666
    .local v11, "def":I
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 1667
    .local v12, "tagInfo":I
    invoke-static {v12}, Lcom/android/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v13

    .line 1668
    .local v13, "allowedFlags":I
    and-int v14, v7, v13

    if-eqz v14, :cond_6

    .line 1669
    return v3

    .line 1665
    .end local v11    # "def":I
    .end local v12    # "tagInfo":I
    .end local v13    # "allowedFlags":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1673
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v3

    shl-int/lit8 v8, v7, 0x18

    shl-int/lit8 v11, p3, 0x10

    or-int/2addr v8, v11

    or-int v8, v8, p4

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    return v4

    .line 1676
    .end local v4    # "tagDef":I
    .end local v5    # "otherDefs":[I
    .end local v6    # "infos":Landroid/util/SparseIntArray;
    .end local v7    # "ifdFlags":I
    .end local v10    # "defaultCheck":Z
    :cond_8
    move/from16 v2, p1

    return v3
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 1555
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1556
    .local v0, "t":Lcom/android/camera/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1557
    const/4 v1, 0x0

    return v1

    .line 1559
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1573
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1597
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/exif/ExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/exif/ExifTag;

    .line 1598
    .local v1, "t":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1599
    .end local v1    # "t":Lcom/android/camera/exif/ExifTag;
    goto :goto_0

    .line 1600
    :cond_0
    return-void
.end method

.method public writeExif([BLjava/lang/String;)I
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 860
    const/4 v0, 0x0

    .line 862
    .local v0, "s":Lcom/android/camera/exif/ExifOutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/android/camera/exif/ExifOutputStream;

    move-object v0, v1

    .line 863
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/exif/ExifOutputStream;->write([BII)V

    .line 864
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    nop

    .line 869
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifOutputStream;->close()V

    .line 870
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifOutputStream;->size()I

    move-result v1

    return v1

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 867
    throw v1

    .line 858
    .end local v0    # "s":Lcom/android/camera/exif/ExifOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 823
    .local v0, "s":Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 824
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 825
    return-void

    .line 820
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 891
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 892
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    nop

    .line 897
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 898
    return-void

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 895
    throw v1

    .line 886
    .end local v0    # "s":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 840
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 841
    .local v0, "s":Ljava/io/OutputStream;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 842
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 843
    return-void

    .line 838
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 915
    const/4 v0, 0x0

    .line 917
    .local v0, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 918
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 919
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    nop

    .line 924
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 925
    return-void

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 922
    throw v1

    .line 913
    .end local v0    # "s":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jpegFileName"    # Ljava/lang/String;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 942
    const/4 v0, 0x0

    .line 944
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 945
    invoke-virtual {p0, v0, p2}, Lcom/android/camera/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    nop

    .line 950
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 951
    return-void

    .line 946
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 948
    throw v1

    .line 940
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 804
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 805
    .local v0, "s":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 806
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 807
    return-void

    .line 802
    .end local v0    # "s":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
