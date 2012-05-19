.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    return-void
.end method

.method private chooseIndex(J)I
    .locals 5
    .parameter "when"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 90
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v3, v3, Landroid/app/Notification;->when:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    move v3, v2

    .line 94
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    return v3

    .line 88
    .restart local v1       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move v3, v0

    .line 94
    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I
    .locals 4
    .parameter "key"
    .parameter "notification"
    .parameter "row"
    .parameter "content"
    .parameter "expanded"
    .parameter "icon"

    .prologue
    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>()V

    .line 63
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    .line 64
    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 65
    iput-object p3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 66
    iput-object p4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 67
    iput-object p5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 68
    iput-object p6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 69
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->chooseIndex(J)I

    move-result v1

    .line 70
    .local v1, index:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    return v1
.end method

.method public findEntry(Landroid/os/IBinder;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 50
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 52
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 53
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    move v3, v2

    .line 57
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    return v3

    .line 51
    .restart local v1       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object p0
.end method

.method public hasClearableItems()Z
    .locals 4

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 118
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_0

    .line 120
    const/4 v3, 0x1

    .line 124
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    return v3

    .line 116
    .restart local v1       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 104
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 105
    const/4 v3, 0x1

    .line 108
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    return v3

    .line 102
    .restart local v1       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 4
    .parameter "key"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 78
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v3, v1

    .line 83
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    return-object v3

    .line 76
    .restart local v1       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
