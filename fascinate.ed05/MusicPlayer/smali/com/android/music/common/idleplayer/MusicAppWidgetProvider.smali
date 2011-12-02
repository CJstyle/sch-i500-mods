.class public Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MusicAppWidgetProvider.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate"

.field static final TAG:Ljava/lang/String; = "MusicAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sInstance:Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.music"

    const-string v2, "com.android.music.common.idleplayer.MusicAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0c0003

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 69
    invoke-direct {p0, p1, p2, v1}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 70
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->sInstance:Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->sInstance:Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;

    .line 40
    :cond_0
    sget-object v1, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->sInstance:Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 87
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 88
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 7
    .parameter "context"
    .parameter "views"
    .parameter "playerActive"

    .prologue
    const v6, 0x7f0c0002

    const/4 v5, 0x0

    .line 168
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v2, serviceName:Landroid/content/ComponentName;
    if-eqz p3, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 174
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 187
    const/high16 v3, 0x7f0c

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 193
    const v3, 0x7f0c0001

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 194
    return-void

    .line 176
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.musicmenukey"

    const-string v4, "com.android.music.musicservicecommand.launch"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 180
    .restart local v1       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 74
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 75
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v1, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyChange(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "musicPlayer.service.stopUpdateStatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->performUpdate(Lcom/android/music/player/service/CorePlayerService;[I)V

    .line 102
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/android/music/common/idleplayer/MusicAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 53
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public performUpdate(Lcom/android/music/player/service/CorePlayerService;[I)V
    .locals 4
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/android/music/player/service/CorePlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v1, views:Landroid/widget/RemoteViews;
    return-void
.end method
