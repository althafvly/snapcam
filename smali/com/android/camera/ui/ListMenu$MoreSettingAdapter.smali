.class Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/camera/ListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mOffString:Ljava/lang/String;

.field mOnString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ui/ListMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ListMenu;)V
    .locals 2

    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    .line 91
    invoke-virtual {p1}, Lcom/android/camera/ui/ListMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/ui/ListMenu;->access$000(Lcom/android/camera/ui/ListMenu;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 93
    .local p1, "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    const v0, 0x7f0e0352

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    .line 95
    const v0, 0x7f0e0351

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 99
    const v0, 0x7f040017

    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v0}, Lcom/android/camera/ui/ListMenu;->access$000(Lcom/android/camera/ui/ListMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 105
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v1

    .line 106
    .local v1, "viewLayoutId":I
    nop

    .line 108
    iget-object v2, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ListMenuItem;

    .line 111
    .local v2, "view":Lcom/android/camera/ui/ListMenuItem;
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ListMenuItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 112
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ListMenuItem;->setSettingChangedListener(Lcom/android/camera/ui/ListMenuItem$Listener;)V

    .line 113
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ListMenuItem;->setEnabled(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$200(Lcom/android/camera/ui/ListMenu;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$300(Lcom/android/camera/ui/ListMenu;)Lcom/android/camera/SettingsManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ListMenuItem;->overrideSettings(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    const-string v3, "ListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid input: enabled list length, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v5}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v3}, Lcom/android/camera/ui/ListMenu;->access$400(Lcom/android/camera/ui/ListMenu;)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0028

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ListMenuItem;->setBackgroundColor(I)V

    .line 125
    :cond_2
    return-object v2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 130
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v0}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ListMenu$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/ListMenu;

    invoke-static {v0}, Lcom/android/camera/ui/ListMenu;->access$100(Lcom/android/camera/ui/ListMenu;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0

    .line 133
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
