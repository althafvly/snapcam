.class Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;
.super Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/AutoPressButtons;
    .param p2, "rootView"    # Landroid/view/View;

    .line 201
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 203
    return-void
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 208
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 212
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    .line 213
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$300(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    .local v5, "buttonLabel":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    iget-object v4, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$300(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 217
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 218
    .local v6, "screenText":Ljava/lang/String;
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .local v7, "enabled":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;

    iget-object v9, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    iget-object v10, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->mRootView:Landroid/view/View;

    invoke-direct {v8, v9, v10, v6}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v8}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;->findView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    return v1

    .line 222
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 223
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 230
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    .end local v5    # "buttonLabel":Ljava/lang/String;
    .end local v6    # "screenText":Ljava/lang/String;
    .end local v7    # "enabled":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_4
    goto :goto_0

    .line 235
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    return v1
.end method
