.class Lcom/android/camera/ui/PanoCaptureProcessView$3;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 703
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 706
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0xb4

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2800(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    iget-object v3, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 707
    :cond_0
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 708
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 712
    :goto_1
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v3, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2802(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 714
    :cond_3
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v3, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v4}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2900()F

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1400(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 715
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v3, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3000(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V

    .line 716
    const/4 v0, 0x1

    new-array v3, v0, [Z

    .line 717
    .local v3, "isKey":[Z
    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 718
    .local v4, "framePos":[I
    new-array v5, v0, [I

    .line 719
    .local v5, "moveSpeed":[I
    iget-object v6, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6, v3, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3100(Lcom/android/camera/ui/PanoCaptureProcessView;[Z[I[I)V

    .line 720
    const/4 v6, 0x2

    aget v7, v4, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 721
    iget-object v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0295

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 723
    :cond_4
    iget-object v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    iget-object v7, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    aget v8, v4, v6

    invoke-static {v7, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1902(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 727
    :goto_2
    const/4 v7, 0x0

    aget-boolean v8, v3, v7

    if-eqz v8, :cond_5

    .line 728
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    move-result-object v8

    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->val$bitmap:Landroid/graphics/Bitmap;

    aget v10, v4, v7

    aget v11, v4, v0

    aget v6, v4, v6

    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->addTask(Landroid/graphics/Bitmap;III)V

    .line 730
    :cond_5
    new-instance v6, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget-object v13, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v15

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v16

    aget v17, v4, v7

    aget v18, v4, v0

    move-object v12, v6

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFII)V

    .line 731
    .local v6, "picture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v8

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v8, v9, :cond_9

    .line 732
    aget v8, v4, v7

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v9

    neg-int v9, v9

    if-ge v8, v9, :cond_6

    .line 733
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v8, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto :goto_3

    .line 734
    :cond_6
    aget v8, v4, v7

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v9

    if-le v8, v9, :cond_7

    .line 735
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v8, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto :goto_3

    .line 736
    :cond_7
    aget v8, v4, v0

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v9

    neg-int v9, v9

    if-ge v8, v9, :cond_8

    .line 737
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v8, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    goto :goto_3

    .line 738
    :cond_8
    aget v8, v4, v0

    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3300()I

    move-result v9

    if-le v8, v9, :cond_9

    .line 739
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v8, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 742
    :cond_9
    :goto_3
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v8

    if-nez v8, :cond_10

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v8

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UNKNOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v8, v9, :cond_10

    .line 746
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v8

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v8, v9, :cond_d

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v8

    sget-object v9, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v8, v9, :cond_a

    goto :goto_5

    .line 757
    :cond_a
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    if-ne v8, v2, :cond_b

    goto :goto_4

    .line 762
    :cond_b
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v8, v9

    invoke-static {v2, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 763
    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 764
    .local v2, "masterBitmap":Landroid/graphics/Bitmap;
    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_7

    .line 758
    .end local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_c
    :goto_4
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v8, v9

    invoke-static {v2, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 759
    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 760
    .restart local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_7

    .line 747
    .end local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_5
    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v8

    if-ne v8, v2, :cond_e

    goto :goto_6

    .line 752
    :cond_e
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v8, v9

    invoke-static {v2, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 753
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v2

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 754
    .restart local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_7

    .line 748
    .end local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    :cond_f
    :goto_6
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    mul-int/2addr v8, v9

    invoke-static {v2, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 749
    iget-object v2, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v2

    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 750
    .restart local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    sget v8, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v9, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 764
    .local v8, "liveBitmap":Landroid/graphics/Bitmap;
    :goto_7
    nop

    .line 767
    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    new-instance v15, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget-object v11, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v12, 0x0

    iget-object v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v10}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v13

    iget-object v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v10}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move-object v10, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V

    invoke-static {v9, v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 768
    new-instance v7, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget-object v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v12

    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v7

    move-object v11, v2

    invoke-direct/range {v9 .. v17}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V

    .line 769
    .local v7, "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 770
    :try_start_0
    iget-object v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v10, v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 771
    iget-object v10, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v10}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v10

    iput-object v8, v10, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    .line 772
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v9, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v9, v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .end local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .end local v8    # "liveBitmap":Landroid/graphics/Bitmap;
    goto :goto_8

    .line 772
    .restart local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .restart local v8    # "liveBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 775
    .end local v2    # "masterBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "masterPicture":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .end local v8    # "liveBitmap":Landroid/graphics/Bitmap;
    :cond_10
    :goto_8
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 776
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v2, 0x0

    aget-boolean v7, v3, v2

    iget-object v8, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3500(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v8

    invoke-static {v0, v6, v7, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3600(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V

    .line 777
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3700(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 778
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V

    .line 780
    :cond_11
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    goto :goto_9

    .line 782
    :cond_12
    const/4 v2, 0x0

    :goto_9
    iget-object v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$3802(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 783
    return-void
.end method
