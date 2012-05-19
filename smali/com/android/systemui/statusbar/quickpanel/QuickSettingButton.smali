.class public abstract Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.super Landroid/widget/TextView;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivateStatus:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mRootView:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    return-void
.end method


# virtual methods
.method abstract activate()V
.end method

.method abstract checkWifiForWimax()V
.end method

.method abstract deactivate()V
.end method

.method protected getActivateStatus()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 38
    const-string v0, "QuickSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mRootView:Landroid/view/View;

    .line 41
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->setEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->checkWifiForWimax()V

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mActivateStatus:I

    if-ne v1, v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->deactivate()V

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->setEnabled(Z)V

    .line 65
    return-void

    .line 61
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mActivateStatus:I

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->activate()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 51
    const-string v0, "QuickSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method protected setActivateStatus(I)V
    .locals 0
    .parameter "activateStatus"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mActivateStatus:I

    .line 73
    return-void
.end method

.method abstract updateResources()V
.end method
