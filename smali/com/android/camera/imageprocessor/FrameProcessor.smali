.class public Lcom/android/camera/imageprocessor/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;,
        Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;
    }
.end annotation


# static fields
.field public static final FILTER_MAKEUP:I = 0x1

.field public static final FILTER_NONE:I = 0x0

.field public static final LISTENER_TRACKING_FOCUS:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllocationLock:Ljava/lang/Object;

.field private mFinalFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mInputAllocation:Landroid/renderscript/Allocation;

.field private mInputImageReader:Landroid/media/ImageReader;

.field private mIsActive:Z

.field private mIsAllocationEverUsed:Z

.field private mIsFirstIn:Z

.field private mIsVideoOn:Z

.field private mListeningHandler:Landroid/os/Handler;

.field private mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

.field private mListeningThread:Landroid/os/HandlerThread;

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutingHandler:Landroid/os/Handler;

.field private mOutingThread:Landroid/os/HandlerThread;

.field private mOutputAllocation:Landroid/renderscript/Allocation;

.field private mPreviewFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAllocation:Landroid/renderscript/Allocation;

.field private mProcessingHandler:Landroid/os/Handler;

.field private mProcessingThread:Landroid/os/HandlerThread;

.field private mRs:Landroid/renderscript/RenderScript;

.field mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

.field mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

.field private mSize:Landroid/util/Size;

.field private mSurfaceAsItIs:Landroid/view/Surface;

.field private mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

.field private mVideoOutputAllocation:Landroid/renderscript/Allocation;

.field private mVideoSurfaceAsItIs:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/CaptureModule;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsFirstIn:Z

    .line 98
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mActivity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 104
    new-instance v0, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    .line 105
    new-instance v0, Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/imageprocessor/FrameProcessor;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/FrameProcessor;->createAllocation(III)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/imageprocessor/FrameProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsFirstIn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsFirstIn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    return v0
.end method

.method private addFilter(I)V
    .locals 3
    .param p1, "filterId"    # I

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 207
    new-instance v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v1, v2}, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    move-object v0, v1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 209
    new-instance v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v1, v2}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;-><init>(Lcom/android/camera/CaptureModule;)V

    move-object v0, v1

    .line 212
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isFrameListener()Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_2
    return-void
.end method

.method private cleanFilterSet()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 180
    .local v1, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 181
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 185
    .restart local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 186
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_1

    .line 188
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    .line 190
    return-void
.end method

.method private createAllocation(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stridePad"    # I

    .line 146
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 147
    .local v0, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 148
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 149
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 150
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 151
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 152
    .local v1, "nv21TypeBuilder":Landroid/renderscript/Type$Builder;
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 153
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    .line 154
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_gIn(Landroid/renderscript/Allocation;)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_gOut(Landroid/renderscript/Allocation;)V

    .line 156
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_width(J)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_height(J)V

    .line 158
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_pad(J)V

    .line 159
    const/16 v2, 0x5a

    .line 160
    .local v2, "degree":I
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 162
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 163
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    sget v4, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-ne v3, v4, :cond_0

    .line 164
    add-int/lit8 v3, v2, -0x5a

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->set_degree(J)V

    .line 168
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_gIn(Landroid/renderscript/Allocation;)V

    .line 169
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_width(J)V

    .line 170
    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->set_height(J)V

    .line 171
    return-void
.end method

.method private getReaderSurface()Landroid/view/Surface;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_0

    .line 288
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/util/Size;)V
    .locals 5
    .param p1, "previewDim"    # Landroid/util/Size;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 110
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    .line 111
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    .line 114
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 115
    .local v1, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 116
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 117
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 120
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FrameProcessor"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    .line 127
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FrameOutingThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    .line 128
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 133
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FrameListeningThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;

    .line 138
    :cond_2
    new-instance v2, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    invoke-direct {v2, p0}, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;-><init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningTask:Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    .line 139
    new-instance v2, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    invoke-direct {v2, p0}, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;-><init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    .line 140
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mTask:Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    .line 142
    .end local v1    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFrameFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInputSurfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getReaderSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getReaderSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_3
    :goto_0
    return-object v0
.end method

.method public isFrameFilterEnabled()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFrameListnerEnabled()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClose()V
    .locals 2

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsActive:Z

    .line 223
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsAllocationEverUsed:Z

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 238
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessAllocation:Landroid/renderscript/Allocation;

    .line 239
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 240
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 241
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 247
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingThread:Landroid/os/HandlerThread;

    .line 248
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mProcessingHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 252
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 255
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 256
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingThread:Landroid/os/HandlerThread;

    .line 257
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutingHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 261
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 265
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningThread:Landroid/os/HandlerThread;

    .line 266
    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mListeningHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 268
    goto :goto_2

    .line 267
    :catch_2
    move-exception v0

    .line 270
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mPreviewFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 271
    .local v1, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 272
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_3

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 274
    .restart local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 275
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    goto :goto_4

    .line 276
    :cond_8
    return-void

    .line 242
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public onDestory()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    .line 283
    return-void
.end method

.method public onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 193
    .local p1, "filterIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->cleanFilterSet()V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->addFilter(I)V

    .line 197
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameListnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/imageprocessor/FrameProcessor;->init(Landroid/util/Size;)V

    .line 202
    :cond_2
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 328
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSurfaceAsItIs:Landroid/view/Surface;

    .line 329
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setVideoOutputSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 335
    if-nez p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 340
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 343
    return-void

    .line 341
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 345
    :cond_1
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoSurfaceAsItIs:Landroid/view/Surface;

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsVideoOn:Z

    .line 347
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mIsFirstIn:Z

    .line 348
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mFinalFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    if-nez v1, :cond_2

    .line 351
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 352
    .local v1, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 353
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 354
    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    .line 357
    .end local v1    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor;->mVideoOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 358
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 360
    :cond_3
    :goto_0
    return-void
.end method
