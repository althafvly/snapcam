.class abstract Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ViewFinder"
.end annotation


# instance fields
.field mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/AutoPressButtons;
    .param p2, "rootView"    # Landroid/view/View;

    .line 164
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    .line 166
    return-void
.end method


# virtual methods
.method findView()Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->matchesView(Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 176
    return-object p1

    .line 180
    :cond_0
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 183
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 185
    .local v1, "count":I
    const/4 v2, 0x0

    .line 185
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 187
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 188
    return-object v3

    .line 185
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract matchesView(Landroid/view/View;)Z
.end method
