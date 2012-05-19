.class public Lcom/lidroid/util/LedController;
.super Ljava/lang/Object;
.source "LedController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LedController"

.field private static sInstance:Lcom/lidroid/util/LedController;


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/lidroid/util/LedController;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lidroid/util/LedController;

    invoke-direct {v0}, Lcom/lidroid/util/LedController;-><init>()V

    sput-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    .line 20
    :cond_0
    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    return-object v0
.end method

.method private openCamera()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "LedController"

    const-string v1, "openCamera()"

    invoke-static {v0, v1}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 28
    :cond_0
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 33
    iget-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    .line 35
    const-string v0, "LedController"

    const-string v1, "releaseCamera()"

    invoke-static {v0, v1}, Lcom/lidroid/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public isFlashSupported()Z
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lidroid/util/LedController;->openCamera()V

    .line 61
    iget-object v2, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 62
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 64
    .local v1, result:Z
    :goto_0
    invoke-direct {p0}, Lcom/lidroid/util/LedController;->releaseCamera()V

    .line 66
    return v1

    .line 62
    .end local v1           #result:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public off()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 52
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 54
    invoke-direct {p0}, Lcom/lidroid/util/LedController;->releaseCamera()V

    .line 56
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public on()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lidroid/util/LedController;->openCamera()V

    .line 42
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 43
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 45
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 46
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 47
    return-void
.end method
