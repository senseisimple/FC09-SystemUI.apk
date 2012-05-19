.class public Lcom/android/systemui/statusbar/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mConfigChanged:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/Clock$1;-><init>(Lcom/android/systemui/statusbar/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/Clock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/Clock;->mConfigChanged:Z

    return p1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 149
    .local v3, context:Landroid/content/Context;
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 152
    .local v2, b24:Z
    if-eqz v2, :cond_1

    .line 153
    const v5, 0x1040076

    .line 158
    .local v5, res:I
    :goto_0
    const v0, 0xef00

    .line 159
    .local v0, MAGIC1:C
    const v1, 0xef01

    .line 162
    .local v1, MAGIC2:C
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, format:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v2, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/Clock;->mConfigChanged:Z

    if-eqz v8, :cond_2

    .line 206
    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v7, sdf:Ljava/text/SimpleDateFormat;
    iput-object v7, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 207
    iput-object v4, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 211
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, result:Ljava/lang/String;
    return-object v6

    .line 155
    .end local v0           #MAGIC1:C
    .end local v1           #MAGIC2:C
    .end local v4           #format:Ljava/lang/String;
    .end local v5           #res:I
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const v5, 0x1040075

    .restart local v5       #res:I
    goto :goto_0

    .line 209
    .restart local v0       #MAGIC1:C
    .restart local v1       #MAGIC2:C
    .restart local v4       #format:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .restart local v7       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 106
    const v1, -0x414142

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/Clock;->setTextColor(I)V

    .line 107
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 116
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
