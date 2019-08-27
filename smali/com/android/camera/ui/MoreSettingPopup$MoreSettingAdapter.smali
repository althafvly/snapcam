.class Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/MoreSettingPopup;
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

.field final synthetic this$0:Lcom/android/camera/ui/MoreSettingPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/MoreSettingPopup;)V
    .locals 2

    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    .line 59
    invoke-virtual {p1}, Lcom/android/camera/ui/MoreSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/ui/MoreSettingPopup;->access$000(Lcom/android/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    .local p1, "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    const v0, 0x7f0e0352

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    .line 63
    const v0, 0x7f0e0351

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->isOnOffPreference(Lcom/android/camera/ListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const v0, 0x7f040013

    return v0

    .line 71
    :cond_0
    const v0, 0x7f040014

    return v0
.end method

.method private isOnOffPreference(Lcom/android/camera/ListPreference;)Z
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 75
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v2

    .line 77
    :cond_0
    aget-object v1, v0, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "str1":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "str2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    :cond_2
    move v2, v3

    goto :goto_0

    .line 80
    :cond_3
    nop

    .line 79
    :goto_0
    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v0}, Lcom/android/camera/ui/MoreSettingPopup;->access$000(Lcom/android/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 86
    .local v0, "pref":Lcom/android/camera/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v1

    .line 87
    .local v1, "viewLayoutId":I
    nop

    .line 89
    iget-object v2, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/InLineSettingItem;

    .line 92
    .local v2, "view":Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 93
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V

    .line 94
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v3}, Lcom/android/camera/ui/MoreSettingPopup;->access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v3}, Lcom/android/camera/ui/MoreSettingPopup;->access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_0
    const-string v3, "MoreSettingPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid input: enabled list length, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v5}, Lcom/android/camera/ui/MoreSettingPopup;->access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-object v2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 105
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v0}, Lcom/android/camera/ui/MoreSettingPopup;->access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-static {v0}, Lcom/android/camera/ui/MoreSettingPopup;->access$100(Lcom/android/camera/ui/MoreSettingPopup;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
