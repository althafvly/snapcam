.class Lcom/android/camera/MyPagerAdapter$1;
.super Ljava/lang/Object;
.source "SceneModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MyPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MyPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/MyPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MyPagerAdapter;

    .line 214
    iput-object p1, p0, Lcom/android/camera/MyPagerAdapter$1;->this$0:Lcom/android/camera/MyPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 217
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/MyPagerAdapter$1;->this$0:Lcom/android/camera/MyPagerAdapter;

    invoke-static {v0}, Lcom/android/camera/MyPagerAdapter;->access$000(Lcom/android/camera/MyPagerAdapter;)Lcom/android/camera/SceneModeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SceneModeActivity;->getCurrentPage()I

    move-result v0

    .line 218
    .local v0, "page":I
    iget-object v1, p0, Lcom/android/camera/MyPagerAdapter$1;->this$0:Lcom/android/camera/MyPagerAdapter;

    invoke-static {v1}, Lcom/android/camera/MyPagerAdapter;->access$000(Lcom/android/camera/MyPagerAdapter;)Lcom/android/camera/SceneModeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SceneModeActivity;->getElmentPerPage()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/2addr v1, p3

    .line 219
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 220
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 221
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 222
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_1
    const v2, 0x7f02016e

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 227
    iget-object v2, p0, Lcom/android/camera/MyPagerAdapter$1;->this$0:Lcom/android/camera/MyPagerAdapter;

    invoke-static {v2}, Lcom/android/camera/MyPagerAdapter;->access$000(Lcom/android/camera/MyPagerAdapter;)Lcom/android/camera/SceneModeActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SceneModeActivity;->finish()V

    .line 228
    return-void
.end method
