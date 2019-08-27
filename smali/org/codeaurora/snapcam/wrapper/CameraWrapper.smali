.class public Lorg/codeaurora/snapcam/wrapper/CameraWrapper;
.super Lorg/codeaurora/snapcam/wrapper/Wrapper;
.source "CameraWrapper.java"


# static fields
.field private static method_sendHistogramData:Ljava/lang/reflect/Method;

.field private static method_setHistogramMode:Ljava/lang/reflect/Method;

.field private static method_setLongshot:Ljava/lang/reflect/Method;

.field private static method_setMetadataCb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    .line 71
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    .line 88
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    .line 104
    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/codeaurora/snapcam/wrapper/Wrapper;-><init>()V

    return-void
.end method

.method public static final sendHistogramData(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 90
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "Wrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no sendHistogramData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 96
    const-class v0, Landroid/hardware/Camera;

    const-string v2, "sendHistogramData"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    .line 98
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_sendHistogramData:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final setHistogramMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .line 73
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Wrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setHistogramMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 79
    const-class v0, Landroid/hardware/Camera;

    const-string v3, "setHistogramMode"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/hardware/Camera$CameraDataCallback;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    .line 82
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setHistogramMode:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final setLongshot(Landroid/hardware/Camera;Z)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "enable"    # Z

    .line 106
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "Wrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setLongshot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 112
    const-class v0, Landroid/hardware/Camera;

    const-string v3, "setLongshot"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 113
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    .line 115
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setLongshot:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final setMetadataCb(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 56
    sget-boolean v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Wrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no setMetadataCb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 62
    const-class v0, Landroid/hardware/Camera;

    const-string v3, "setMetadataCb"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/hardware/Camera$CameraMetaDataCallback;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    .line 65
    :cond_1
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/CameraWrapper;->method_setMetadataCb:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
