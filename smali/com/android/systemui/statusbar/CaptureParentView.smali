.class public Lcom/android/systemui/statusbar/CaptureParentView;
.super Landroid/widget/FrameLayout;
.source "CaptureParentView.java"


# instance fields
.field mCaptureView:Landroid/widget/ImageView;

.field private mCaptured:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mFrameBuffer:[B

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mStatusBarScreenshot:Lcom/android/systemui/statusbar/StatusBarScreenshot;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private setBitmapScreenShot()Z
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mStatusBarScreenshot:Lcom/android/systemui/statusbar/StatusBarScreenshot;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getFrameBufferData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mFrameBuffer:[B

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mFrameBuffer:[B

    if-nez v2, :cond_0

    .line 133
    const-string v2, "CaptureParentView"

    const-string v3, "Failed to get framebuffer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v2, 0x0

    .line 141
    :goto_0
    return v2

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 138
    .local v1, orientation:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mStatusBarScreenshot:Lcom/android/systemui/statusbar/StatusBarScreenshot;

    iget-object v3, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mFrameBuffer:[B

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getBitmapScreenShot([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 77
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    const-string v0, "CaptureParentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged :, mVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCaptured = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mVisibility:I

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mStatusBarScreenshot:Lcom/android/systemui/statusbar/StatusBarScreenshot;

    .line 68
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mDisplay:Landroid/view/Display;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mVisibility:I

    .line 71
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CaptureParentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    .line 72
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 121
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 88
    const-string v0, "CaptureParentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged :, visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCaptured = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez p2, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CaptureParentView;->setBitmapScreenShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptured:Z

    .line 102
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mVisibility:I

    .line 103
    return-void

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptured:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CaptureParentView;->mCaptured:Z

    goto :goto_0
.end method
