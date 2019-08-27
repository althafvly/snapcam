.class public Lcom/android/camera/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static PERMISSION_REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PermissionsActivity"


# instance fields
.field private mCriticalPermissionDenied:Z

.field private mFlagHasCameraPermission:Z

.field private mFlagHasMicrophonePermission:Z

.field private mFlagHasStoragePermission:Z

.field private mIndexPermissionGpsRequestLocation:I

.field private mIndexPermissionRequestCamera:I

.field private mIndexPermissionRequestLocation:I

.field private mIndexPermissionRequestMicrophone:I

.field private mIndexPermissionRequestStorageRead:I

.field private mIndexPermissionRequestStorageWrite:I

.field private mIntent:Landroid/content/Intent;

.field private mIsReturnResult:Z

.field private mNumPermissionsToRequest:I

.field private mShouldRequestCameraPermission:Z

.field private mShouldRequestGpsLocationPermission:Z

.field private mShouldRequestLocationPermission:Z

.field private mShouldRequestMicrophonePermission:Z

.field private mShouldRequestStoragePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildPermissionsRequest()V
    .locals 3

    .prologue
    .line 120
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    new-array v1, v2, [Ljava/lang/String;

    .line 121
    .local v1, "permissionsToRequest":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, "permissionsRequestIndex":I
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v0

    .line 125
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v0

    .line 130
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 133
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    if-eqz v2, :cond_2

    .line 134
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    .line 136
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageWrite:I

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 138
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    .line 140
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 144
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-eqz v2, :cond_3

    .line 145
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    .line 147
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestGpsLocationPermission:Z

    if-eqz v2, :cond_4

    .line 154
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v0

    .line 156
    iput v0, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionGpsRequestLocation:I

    .line 159
    :cond_4
    sget v2, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_CODE:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/PermissionsActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method private checkPermissions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 65
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    .line 70
    :goto_0
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 73
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    .line 78
    :goto_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    :cond_0
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 83
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    .line 88
    :goto_2
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 91
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    .line 95
    :cond_1
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 98
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestGpsLocationPermission:Z

    .line 102
    :cond_2
    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    if-eqz v2, :cond_6

    .line 103
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->buildPermissionsRequest()V

    .line 117
    :goto_3
    return-void

    .line 67
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    goto :goto_0

    .line 75
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    goto :goto_1

    .line 85
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    goto :goto_2

    .line 107
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestGpsLocationPermission:Z

    if-nez v2, :cond_8

    .line 108
    :cond_7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    goto :goto_3
.end method

.method private handlePermissionsFailure()V
    .locals 3

    .prologue
    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0355

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0358

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PermissionsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PermissionsActivity$2;-><init>(Lcom/android/camera/PermissionsActivity;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0359

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PermissionsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PermissionsActivity$1;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return-void
.end method

.method private handlePermissionsSuccess()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->setRequestPermissionShow()V

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 238
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    const-class v2, Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/camera/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->finish()V

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->finish()V

    goto :goto_0
.end method

.method private setRequestPermissionShow()V
    .locals 5

    .prologue
    .line 273
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 274
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "request_permission"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 275
    .local v1, "isRequestShown":Z
    if-nez v1, :cond_0

    .line 276
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "request_permission"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mIntent:Landroid/content/Intent;

    .line 52
    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    .line 53
    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mIsReturnResult:Z

    if-nez v0, :cond_0

    .line 54
    iput v1, p0, Lcom/android/camera/PermissionsActivity;->mNumPermissionsToRequest:I

    .line 55
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkPermissions()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestCameraPermission:Z

    if-eqz v2, :cond_0

    .line 167
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_6

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestCamera:I

    aget v2, p3, v2

    if-nez v2, :cond_6

    .line 170
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    .line 175
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestMicrophonePermission:Z

    if-eqz v2, :cond_1

    .line 176
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_7

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestMicrophone:I

    aget v2, p3, v2

    if-nez v2, :cond_7

    .line 179
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    .line 184
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestStoragePermission:Z

    if-eqz v2, :cond_2

    .line 185
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_8

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageWrite:I

    aget v2, p3, v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestStorageRead:I

    aget v2, p3, v2

    if-nez v2, :cond_8

    .line 190
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    .line 196
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestLocationPermission:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mShouldRequestGpsLocationPermission:Z

    if-eqz v2, :cond_4

    .line 198
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionRequestLocation:I

    aget v2, p3, v2

    if-nez v2, :cond_3

    .line 210
    :cond_3
    array-length v2, p3

    iget v3, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionGpsRequestLocation:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4

    iget v2, p0, Lcom/android/camera/PermissionsActivity;->mIndexPermissionGpsRequestLocation:I

    aget v2, p3, v2

    if-nez v2, :cond_4

    .line 220
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasCameraPermission:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasMicrophonePermission:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mFlagHasStoragePermission:Z

    if-eqz v2, :cond_9

    .line 223
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location_request"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    .line 232
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :goto_3
    return-void

    .line 172
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_0

    .line 181
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_1

    .line 192
    :cond_8
    iput-boolean v4, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    goto :goto_2

    .line 229
    :cond_9
    iget-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mCriticalPermissionDenied:Z

    if-eqz v2, :cond_5

    .line 230
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V

    goto :goto_3
.end method
