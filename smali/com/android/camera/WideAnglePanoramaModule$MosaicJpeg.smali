.class Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WideAnglePanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    .line 178
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->width:I

    .line 179
    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->height:I

    .line 180
    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->isValid:Z

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;[BII)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 169
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    .line 171
    iput p3, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->width:I

    .line 172
    iput p4, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->height:I

    .line 173
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->isValid:Z

    .line 174
    return-void
.end method
