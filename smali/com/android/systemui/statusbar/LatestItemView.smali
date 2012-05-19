.class public Lcom/android/systemui/statusbar/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LatestItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 39
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setSelected(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->performClick()Z

    move v0, v2

    .line 46
    goto :goto_1

    .line 51
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
