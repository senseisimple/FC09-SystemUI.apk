.class public Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 16
    return-void
.end method
