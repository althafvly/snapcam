.class public abstract Lcom/android/camera/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/CameraPreference;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lorg/codeaurora/snapcam/R$styleable;->CameraPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraPreference;->mTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method
