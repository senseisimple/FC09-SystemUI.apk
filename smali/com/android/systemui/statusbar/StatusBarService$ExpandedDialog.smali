.class Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;
.super Landroid/app/Dialog;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    .line 260
    const v0, 0x103000d

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 261
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 266
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 265
    .end local v0           #down:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 268
    .restart local v0       #down:Z
    :pswitch_0
    if-nez v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    :cond_1
    move v1, v2

    .line 271
    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
