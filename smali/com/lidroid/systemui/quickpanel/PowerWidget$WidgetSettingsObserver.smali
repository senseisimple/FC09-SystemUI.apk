.class Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "uri"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 317
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 319
    iput-object p3, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    .line 320
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$200(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    const-string v1, "expanded_widget_buttons"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->handleOnChangeUri(Landroid/net/Uri;)V

    .line 341
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateWidget()V

    .line 342
    return-void
.end method

.method public unobserve()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$200(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    return-void
.end method
