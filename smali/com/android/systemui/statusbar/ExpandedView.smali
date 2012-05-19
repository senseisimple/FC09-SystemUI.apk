.class public Lcom/android/systemui/statusbar/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# instance fields
.field mPrevHeight:I

.field mService:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 51
    sub-int v0, p5, p3

    .line 52
    .local v0, height:I
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_0

    .line 55
    iput v0, p0, Lcom/android/systemui/statusbar/ExpandedView;->mPrevHeight:I

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 58
    :cond_0
    return-void
.end method
