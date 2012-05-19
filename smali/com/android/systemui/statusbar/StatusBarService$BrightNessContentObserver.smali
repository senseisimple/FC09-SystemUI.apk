.class Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightNessContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$100(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$002(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 153
    return-void
.end method
