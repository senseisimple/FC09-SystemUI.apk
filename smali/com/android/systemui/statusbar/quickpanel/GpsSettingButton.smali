.class public final Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;
    }
.end annotation


# instance fields
.field private mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 65
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 69
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void

    .line 71
    :pswitch_0
    const v1, 0x7f02001e

    .line 72
    const v4, 0x7f020021

    .line 73
    goto :goto_0

    .line 75
    :pswitch_1
    const v1, 0x7f02001d

    .line 76
    const v4, 0x7f020020

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateIcons()V

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "GpsSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 90
    return-void
.end method

.method public checkWifiForWimax()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "GpsSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 95
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 37
    const-string v0, "GpsSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 48
    const-string v0, "GpsSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setText(I)V

    .line 85
    return-void
.end method
