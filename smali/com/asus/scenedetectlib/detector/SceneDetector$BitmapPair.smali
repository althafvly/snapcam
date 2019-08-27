.class Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/scenedetectlib/detector/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapPair"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/asus/scenedetectlib/detector/SceneDetector$BitmapPair;->b:Landroid/graphics/Canvas;

    return-void
.end method
