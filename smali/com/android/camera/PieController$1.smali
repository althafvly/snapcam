.class Lcom/android/camera/PieController$1;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PieController;->makeItem(Ljava/lang/String;)Lcom/android/camera/ui/PieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PieController;

.field final synthetic val$index:I

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PieController;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iput-object p2, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/PieController$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    iget v1, p0, Lcom/android/camera/PieController$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iget-object v1, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-static {v0, v1}, Lcom/android/camera/PieController;->access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iget-object v1, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 133
    return-void
.end method
