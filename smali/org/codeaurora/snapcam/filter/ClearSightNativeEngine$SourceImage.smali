.class Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceImage"
.end annotation


# instance fields
.field mMetadata:[F

.field mVU:Ljava/nio/ByteBuffer;

.field mY:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;II)V
    .locals 0
    .param p2, "ySize"    # I
    .param p3, "vuSize"    # I

    .line 361
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    .line 363
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    .line 364
    const/4 p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    .line 365
    return-void
.end method
