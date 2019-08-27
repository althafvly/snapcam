.class Lcom/android/camera/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SceneModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/GridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/SceneModeActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPage:I


# direct methods
.method public constructor <init>(Lcom/android/camera/SceneModeActivity;I)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/SceneModeActivity;
    .param p2, "i"    # I

    .line 254
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    .line 256
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/camera/SceneModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 257
    iput p2, p0, Lcom/android/camera/GridAdapter;->mPage:I

    .line 258
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v0}, Lcom/android/camera/SceneModeActivity;->getElmentPerPage()I

    move-result v0

    .line 263
    .local v0, "elem":I
    iget v1, p0, Lcom/android/camera/GridAdapter;->mPage:I

    iget-object v2, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v2}, Lcom/android/camera/SceneModeActivity;->getNumberOfPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v1}, Lcom/android/camera/SceneModeActivity;->getNumberOfElement()I

    move-result v1

    iget v2, p0, Lcom/android/camera/GridAdapter;->mPage:I

    mul-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 266
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 281
    move-object v0, p2

    .line 284
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 285
    new-instance v1, Lcom/android/camera/GridAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/GridAdapter$ViewHolder;-><init>(Lcom/android/camera/GridAdapter;Lcom/android/camera/GridAdapter$1;)V

    .line 286
    .local v1, "viewHolder":Lcom/android/camera/GridAdapter$ViewHolder;
    iget-object v2, p0, Lcom/android/camera/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 287
    const v2, 0x7f0d0053

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/camera/GridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 288
    const v2, 0x7f0d0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/camera/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    .end local v1    # "viewHolder":Lcom/android/camera/GridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GridAdapter$ViewHolder;

    .line 293
    .restart local v1    # "viewHolder":Lcom/android/camera/GridAdapter$ViewHolder;
    :goto_0
    iget v2, p0, Lcom/android/camera/GridAdapter;->mPage:I

    iget-object v3, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v3}, Lcom/android/camera/SceneModeActivity;->getElmentPerPage()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, p1

    .line 294
    .local v2, "idx":I
    iget-object v3, v1, Lcom/android/camera/GridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v4}, Lcom/android/camera/SceneModeActivity;->getThumbnails()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object v3, v1, Lcom/android/camera/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v4}, Lcom/android/camera/SceneModeActivity;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/GridAdapter;->mPage:I

    iget-object v6, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v6}, Lcom/android/camera/SceneModeActivity;->getElmentPerPage()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v5, p1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/android/camera/GridAdapter;->mActivity:Lcom/android/camera/SceneModeActivity;

    invoke-virtual {v3}, Lcom/android/camera/SceneModeActivity;->getCurrentScene()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 297
    const v3, 0x7f02016e

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 300
    :cond_1
    return-object v0
.end method
