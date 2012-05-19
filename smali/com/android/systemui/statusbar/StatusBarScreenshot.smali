.class public Lcom/android/systemui/statusbar/StatusBarScreenshot;
.super Ljava/lang/Object;
.source "StatusBarScreenshot.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBytePerPixel:I

.field private mFrameBufferSize:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "StatusBarScreenshot"

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->DEBUG:Z

    .line 36
    const-string v0, "StatusBarScreenshot"

    sput-object v1, Lcom/android/systemui/statusbar/StatusBarScreenshot;->TAG:Ljava/lang/String;

    .line 114
    const-string v0, "StatusBarScreenshot"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mWidth:I

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mHeight:I

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getBytePerPixel()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mBytePerPixel:I

    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mBytePerPixel:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mFrameBufferSize:I

    .line 48
    return-void
.end method

.method public static bitmapRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "b"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x0

    .line 80
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap rotate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_1
    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_2
    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_3
    const/16 v0, 0x10e

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private native getBytePerPixel()I
.end method

.method private native getFrameBuffer([B)Z
.end method

.method private native getHeight()I
.end method

.method private native getWidth()I
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 96
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 97
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 101
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    move-object p0, v7

    .line 109
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 105
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 106
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->TAG:Ljava/lang/String;

    const-string v1, "Out of Memmory"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getBitmapScreenShot([BI)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "frameBufferbyteArray"
    .parameter "orientation"

    .prologue
    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 76
    :cond_0
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->bitmapRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFrameBufferData()[B
    .locals 4

    .prologue
    .line 52
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBytePerPixel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mBytePerPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFrameBufferSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mFrameBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarScreenshot;->mFrameBufferSize:I

    new-array v0, v1, [B

    .line 59
    .local v0, frameBufferbyteArray:[B
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarScreenshot;->getFrameBuffer([B)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 63
    :goto_0
    return-object v1

    .line 62
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarScreenshot;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarScreenshot;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get frame buffer data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
