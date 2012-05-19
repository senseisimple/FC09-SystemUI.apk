.class public Lcom/android/systemui/statusbar/TickerView;
.super Landroid/widget/TextSwitcher;
.source "TickerView.java"


# instance fields
.field mTicker:Lcom/android/systemui/statusbar/Ticker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->reflowText()V

    .line 36
    return-void
.end method
