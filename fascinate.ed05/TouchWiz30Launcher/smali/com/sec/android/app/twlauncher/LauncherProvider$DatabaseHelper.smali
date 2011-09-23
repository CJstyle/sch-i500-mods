.class Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_MAINAPP:Ljava/lang/String; = "mainapp"

.field private static final TAG_MAINAPPS:Ljava/lang/String; = "mainapps"

.field private static final TAG_SAMSUNGAPPWIDGET:Ljava/lang/String; = "samsungappwidget"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_TOPAPP:Ljava/lang/String; = "topapp"

.field private static final TAG_TOPAPPS:Ljava/lang/String; = "topapps"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 207
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 208
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 209
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 210
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 851
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 852
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, className:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 856
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 857
    const/high16 v5, 0x1020

    invoke-virtual {p5, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 859
    const-string v5, "intent"

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v5, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v5, "itemType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v5, "spanX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 871
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v5

    .line 865
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 866
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add favorite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v5, v8

    .line 869
    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 6
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 952
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 954
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 960
    const/4 v0, 0x1

    .line 962
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 963
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 964
    .local v3, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    .line 815
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, className:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v7, v8

    .line 844
    :goto_0
    return v7

    .line 822
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 825
    .local v0, allocatedAppWidgets:Z
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 828
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 830
    .local v1, appWidgetId:I
    const-string v7, "itemType"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v7, "spanX"

    const/4 v8, 0x5

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v7, "spanY"

    const/4 v8, 0x6

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v7, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 834
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 836
    const/4 v0, 0x1

    .line 838
    invoke-virtual {v2, v1, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #appWidgetId:I
    :goto_1
    move v7, v0

    .line 844
    goto :goto_0

    .line 839
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 840
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v7, "Launcher.LauncherProvider"

    const-string v8, "Problem allocating appWidgetId"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "favoritesInfo"

    .prologue
    .line 1108
    const/4 v7, 0x1

    aget-object v6, p3, v7

    .line 1109
    .local v6, packageName:Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v3, p3, v7

    .line 1111
    .local v3, className:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 1112
    :cond_0
    const/4 v7, 0x0

    .line 1137
    :goto_0
    return v7

    .line 1115
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 1118
    .local v0, allocatedAppWidgets:Z
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1121
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1123
    .local v1, appWidgetId:I
    const-string v7, "itemType"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    const-string v7, "spanX"

    const/4 v8, 0x6

    aget-object v8, p3, v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v7, "spanY"

    const/4 v8, 0x7

    aget-object v8, p3, v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v7, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1129
    const/4 v0, 0x1

    .line 1131
    invoke-virtual {v2, v1, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #appWidgetId:I
    :goto_1
    move v7, v0

    .line 1137
    goto :goto_0

    .line 1132
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 1133
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v7, "Launcher.LauncherProvider"

    const-string v8, "(CSC)Problem allocating appWidgetId"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 25
    .parameter "db"
    .parameter "values"
    .parameter "favoritesInfo"
    .parameter "packageManager"

    .prologue
    .line 1055
    const/16 v22, 0x1

    aget-object v14, p3, v22

    .line 1056
    .local v14, packageName:Ljava/lang/String;
    const/16 v22, 0x2

    aget-object v7, p3, v22

    .line 1057
    .local v7, className:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1059
    .local v12, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 1061
    .local v6, c:Landroid/content/Context;
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v14, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .local v8, cn:Landroid/content/ComponentName;
    const/16 v22, 0x0

    move-object/from16 v0, p4

    move-object v1, v8

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 1063
    .local v11, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1065
    const-string v22, "intent"

    const/16 v23, 0x0

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v22, "itemType"

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move-object v1, v14

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1069
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "min_width"

    const-string v24, "string"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1070
    .local v16, resWidth:I
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "min_height"

    const-string v24, "string"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1072
    .local v15, resHeight:I
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1073
    .local v13, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowManager;

    .line 1074
    .local v21, wm:Landroid/view/WindowManager;
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1076
    if-eqz v16, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v13

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v20, v22

    .line 1077
    .local v20, width:I
    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v13

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v10, v22

    .line 1079
    .local v10, height:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1081
    .local v17, resources:Landroid/content/res/Resources;
    const v22, 0x7f080004

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1082
    .local v5, actualWidth:I
    const v22, 0x7f080005

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1084
    .local v4, actualHeight:I
    rem-int v22, v20, v5

    if-eqz v22, :cond_4

    div-int v22, v20, v5

    add-int/lit8 v22, v22, 0x1

    move/from16 v18, v22

    .line 1085
    .local v18, spanX:I
    :goto_2
    rem-int v22, v10, v4

    if-eqz v22, :cond_5

    div-int v22, v10, v4

    add-int/lit8 v22, v22, 0x1

    move/from16 v19, v22

    .line 1087
    .local v19, spanY:I
    :goto_3
    sget v22, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 1088
    sget v18, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 1091
    :cond_0
    sget v22, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 1092
    sget v19, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 1095
    :cond_1
    const-string v22, "spanX"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string v22, "spanY"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    const-string v22, "favorites"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1104
    const/16 v22, 0x1

    .end local v4           #actualHeight:I
    .end local v5           #actualWidth:I
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v10           #height:I
    .end local v11           #info:Landroid/content/pm/ActivityInfo;
    .end local v13           #metrics:Landroid/util/DisplayMetrics;
    .end local v15           #resHeight:I
    .end local v16           #resWidth:I
    .end local v17           #resources:Landroid/content/res/Resources;
    .end local v18           #spanX:I
    .end local v19           #spanY:I
    .end local v20           #width:I
    .end local v21           #wm:Landroid/view/WindowManager;
    :goto_4
    return v22

    .line 1076
    .restart local v8       #cn:Landroid/content/ComponentName;
    .restart local v11       #info:Landroid/content/pm/ActivityInfo;
    .restart local v13       #metrics:Landroid/util/DisplayMetrics;
    .restart local v15       #resHeight:I
    .restart local v16       #resWidth:I
    .restart local v21       #wm:Landroid/view/WindowManager;
    :cond_2
    const/16 v22, 0x0

    move/from16 v20, v22

    goto/16 :goto_0

    .line 1077
    .restart local v20       #width:I
    :cond_3
    const/16 v22, 0x0

    move/from16 v10, v22

    goto/16 :goto_1

    .line 1084
    .restart local v4       #actualHeight:I
    .restart local v5       #actualWidth:I
    .restart local v10       #height:I
    .restart local v17       #resources:Landroid/content/res/Resources;
    :cond_4
    div-int v22, v20, v5

    move/from16 v18, v22

    goto :goto_2

    .line 1085
    .restart local v18       #spanX:I
    :cond_5
    div-int v22, v10, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v22

    goto :goto_3

    .line 1098
    .end local v4           #actualHeight:I
    .end local v5           #actualWidth:I
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v10           #height:I
    .end local v11           #info:Landroid/content/pm/ActivityInfo;
    .end local v13           #metrics:Landroid/util/DisplayMetrics;
    .end local v15           #resHeight:I
    .end local v16           #resWidth:I
    .end local v17           #resources:Landroid/content/res/Resources;
    .end local v18           #spanX:I
    .end local v20           #width:I
    .end local v21           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v22

    move-object/from16 v9, v22

    .line 1099
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "Launcher.LauncherProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "(CSC)Unable to add samsungappwidget: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1102
    const/16 v22, 0x0

    goto :goto_4
.end method

.method private addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "pname"
    .parameter "cname"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1144
    move-object v4, p3

    .line 1145
    .local v4, packageName:Ljava/lang/String;
    move-object v0, p4

    .line 1147
    .local v0, className:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    invoke-virtual {p5, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1149
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1150
    const/high16 v5, 0x1020

    invoke-virtual {p6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1152
    const-string v5, "intent"

    invoke-virtual {p6}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v5, "title"

    invoke-virtual {v3, p5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v5, "itemType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    const-string v5, "spanX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 1164
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v5

    .line 1158
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1159
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(CSC)Unable to add favorite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v5, v8

    .line 1162
    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3e8

    .line 971
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 975
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    const/4 v0, 0x0

    .line 983
    .local v0, allocatedAppWidgets:Z
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 985
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    const/4 v0, 0x1

    .line 998
    .end local v1           #appWidgetId:I
    :goto_0
    if-eqz v0, :cond_0

    .line 999
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 1002
    :cond_0
    return v0

    .line 992
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 993
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    .line 735
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, className:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v5

    .line 738
    .local v5, itemNoOfPage:I
    div-int v7, p5, v5

    .line 739
    .local v7, page:I
    rem-int v0, p5, v5

    .line 742
    .local v0, cell:I
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {p4, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 744
    .local v4, info:Landroid/content/pm/ActivityInfo;
    const-string v8, "componentname"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v8, "page_number"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v8, "cell_number"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    const-string v8, "apps"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v8, 0x1

    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v8

    .line 748
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 749
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to add mainapp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 752
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 24
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 760
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 761
    .local v13, packageName:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, className:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 764
    .local v11, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 766
    .local v6, c:Landroid/content/Context;
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v13, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .local v8, cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    move-object/from16 v0, p4

    move-object v1, v8

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 768
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 770
    const-string v21, "intent"

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v21, "itemType"

    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move-object v1, v13

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 774
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "min_width"

    const-string v23, "string"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 775
    .local v15, resWidth:I
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "min_height"

    const-string v23, "string"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 777
    .local v14, resHeight:I
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 778
    .local v12, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 779
    .local v20, wm:Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 781
    if-eqz v15, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v12

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v19, v21

    .line 782
    .local v19, width:I
    :goto_0
    if-eqz v14, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v12

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v10, v21

    .line 784
    .local v10, height:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 786
    .local v16, resources:Landroid/content/res/Resources;
    const v21, 0x7f080004

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 787
    .local v5, actualWidth:I
    const v21, 0x7f080005

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 789
    .local v4, actualHeight:I
    rem-int v21, v19, v5

    if-eqz v21, :cond_4

    div-int v21, v19, v5

    add-int/lit8 v21, v21, 0x1

    move/from16 v17, v21

    .line 790
    .local v17, spanX:I
    :goto_2
    rem-int v21, v10, v4

    if-eqz v21, :cond_5

    div-int v21, v10, v4

    add-int/lit8 v21, v21, 0x1

    move/from16 v18, v21

    .line 792
    .local v18, spanY:I
    :goto_3
    sget v21, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 793
    sget v17, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 796
    :cond_0
    sget v21, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 797
    sget v18, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 800
    :cond_1
    const-string v21, "spanX"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v21, "spanY"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v21, "appWidgetId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    const-string v21, "favorites"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 811
    const/16 v21, 0x1

    .end local v4           #actualHeight:I
    .end local v5           #actualWidth:I
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v10           #height:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v14           #resHeight:I
    .end local v15           #resWidth:I
    .end local v16           #resources:Landroid/content/res/Resources;
    .end local v17           #spanX:I
    .end local v18           #spanY:I
    .end local v19           #width:I
    .end local v20           #wm:Landroid/view/WindowManager;
    :goto_4
    return v21

    .line 781
    .restart local v8       #cn:Landroid/content/ComponentName;
    .restart local v12       #metrics:Landroid/util/DisplayMetrics;
    .restart local v14       #resHeight:I
    .restart local v15       #resWidth:I
    .restart local v20       #wm:Landroid/view/WindowManager;
    :cond_2
    const/16 v21, 0x0

    move/from16 v19, v21

    goto/16 :goto_0

    .line 782
    .restart local v19       #width:I
    :cond_3
    const/16 v21, 0x0

    move/from16 v10, v21

    goto/16 :goto_1

    .line 789
    .restart local v4       #actualHeight:I
    .restart local v5       #actualWidth:I
    .restart local v10       #height:I
    .restart local v16       #resources:Landroid/content/res/Resources;
    :cond_4
    div-int v21, v19, v5

    move/from16 v17, v21

    goto :goto_2

    .line 790
    .restart local v17       #spanX:I
    :cond_5
    div-int v21, v10, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v18, v21

    goto :goto_3

    .line 805
    .end local v4           #actualHeight:I
    .end local v5           #actualWidth:I
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v10           #height:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v14           #resHeight:I
    .end local v15           #resWidth:I
    .end local v16           #resources:Landroid/content/res/Resources;
    .end local v17           #spanX:I
    .end local v19           #width:I
    .end local v20           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 806
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "Launcher.LauncherProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to add samsungappwidget: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 809
    const/16 v21, 0x0

    goto :goto_4
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 915
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "Launcher.LauncherProvider"

    .line 875
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 877
    .local v3, r:Landroid/content/res/Resources;
    const/4 v6, 0x7

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 878
    .local v1, iconResId:I
    const/16 v6, 0x8

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 880
    .local v4, titleResId:I
    const/4 v2, 0x0

    .line 881
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 883
    .local v5, uri:Ljava/lang/String;
    const/16 v6, 0x9

    :try_start_0
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 891
    if-eqz v1, :cond_0

    if-nez v4, :cond_1

    .line 892
    :cond_0
    const-string v6, "Launcher.LauncherProvider"

    const-string v6, "Shortcut is missing title or icon resource ID"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 908
    :goto_0
    return v6

    .line 885
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 886
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v6, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut has malformed uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move v6, v8

    .line 888
    goto :goto_0

    .line 896
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_1
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 897
    const-string v6, "intent"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v6, "title"

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v6, "itemType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    const-string v6, "spanX"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v6, "spanY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const-string v6, "iconType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    const-string v6, "iconPackage"

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v6, "iconResource"

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v6, "favorites"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v6, v9

    .line 908
    goto :goto_0
.end method

.method private addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 665
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, className:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 670
    .local v3, info:Landroid/content/pm/ActivityInfo;
    const-string v5, "componentname"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v5, "top_number"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v5, "apps"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 679
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v5

    .line 673
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 674
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add topapp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v5, v8

    .line 677
    goto :goto_0
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    const/4 v9, 0x0

    const-string v10, "Launcher.LauncherProvider"

    .line 291
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "converting database from an older format, but not onUpgrade"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v6, 0x0

    .line 294
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 300
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 307
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v6, v2

    .line 311
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 314
    if-eqz v6, :cond_0

    .line 315
    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    :cond_0
    if-eqz v6, :cond_1

    .line 321
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "converted and now triggering widget upgrade"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    :cond_1
    return v6

    .line 301
    :catch_0
    move-exception v8

    .line 302
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23
    .parameter "db"

    .prologue
    .line 453
    const/4 v5, 0x2

    new-array v15, v5, [I

    fill-array-data v15, :array_0

    .line 458
    .local v15, bindSources:[I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v16, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.camera"

    const-string v7, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v5, "itemType"

    invoke-static {v5, v15}, Lcom/sec/android/app/twlauncher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, selectWhere:Ljava/lang/String;
    const/16 v17, 0x0

    .line 467
    .local v17, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 469
    .local v13, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 472
    :try_start_0
    const-string v6, "favorites"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 475
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v22, values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v19

    .line 481
    .local v19, favoriteId:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v14

    .line 483
    .local v14, appWidgetId:I
    const-string v5, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocated appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for favoriteId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 486
    const-string v5, "appWidgetId"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 493
    .local v21, updateWhere:Ljava/lang/String;
    const-string v5, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 496
    .end local v14           #appWidgetId:I
    .end local v21           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 497
    .local v18, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 503
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v19           #favoriteId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 504
    .local v18, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem while allocating appWidgetIds for existing widgets"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    invoke-virtual/range {v18 .. v18}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 508
    if-eqz v17, :cond_0

    .line 509
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 514
    .end local v18           #ex:Landroid/database/SQLException;
    :cond_0
    :goto_1
    if-eqz v13, :cond_1

    .line 515
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 517
    :cond_1
    return-void

    .line 502
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 508
    if-eqz v17, :cond_0

    .line 509
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 507
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 508
    if-eqz v17, :cond_3

    .line 509
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 453
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 29
    .parameter "db"
    .parameter "c"

    .prologue
    .line 329
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 330
    .local v15, idIndex:I
    const-string v25, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 331
    .local v16, intentIndex:I
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 332
    .local v21, titleIndex:I
    const-string v25, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 333
    .local v14, iconTypeIndex:I
    const-string v25, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 334
    .local v11, iconIndex:I
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 335
    .local v12, iconPackageIndex:I
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 336
    .local v13, iconResourceIndex:I
    const-string v25, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 337
    .local v7, containerIndex:I
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 338
    .local v17, itemTypeIndex:I
    const-string v25, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 339
    .local v20, screenIndex:I
    const-string v25, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 340
    .local v5, cellXIndex:I
    const-string v25, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 341
    .local v6, cellYIndex:I
    const-string v25, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 342
    .local v23, uriIndex:I
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 343
    .local v8, displayModeIndex:I
    const-string v25, "appWidgetId"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 345
    .local v4, appWidgetIdIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 346
    .local v19, rows:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 347
    .local v9, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 348
    new-instance v24, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 349
    .local v24, values:Landroid/content/ContentValues;
    const-string v25, "_id"

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string v25, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v25, "title"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v25, "iconType"

    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v25, "icon"

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 354
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v25, "container"

    move-object/from16 v0, p2

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v25, "appWidgetId"

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v25, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v25, "cellX"

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v25, "cellY"

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v25, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aput-object v24, v19, v9

    move v9, v10

    .line 365
    .end local v10           #i:I
    .restart local v9       #i:I
    goto/16 :goto_0

    .line 367
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 368
    const/16 v22, 0x0

    .line 370
    .local v22, total:I
    :try_start_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 371
    .local v18, numValues:I
    const/4 v9, 0x0

    :goto_1
    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 372
    const-string v25, "favorites"

    const/16 v26, 0x0

    aget-object v27, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_1

    .line 373
    const/16 v25, 0x0

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    :goto_2
    return v25

    .line 375
    :cond_1
    add-int/lit8 v22, v22, 0x1

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 378
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v25, v22

    .line 383
    goto :goto_2

    .line 380
    .end local v18           #numValues:I
    :catchall_0
    move-exception v25

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v25
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 933
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 934
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 935
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_0

    move-object v5, v6

    .line 943
    .end local p0
    :goto_0
    return-object v5

    .line 936
    .restart local p0
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 937
    .local v3, providerCount:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 938
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 939
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 940
    goto :goto_0

    .line 937
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_2
    move-object v5, v6

    .line 943
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 921
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 923
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 924
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 925
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .locals 5
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 529
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.sec.android.app.twlauncher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 533
    const-string v2, "com.sec.android.app.twlauncher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method private loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1012
    const-string v0, "others.xml"

    invoke-static {v0, v11}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerCount()I

    move-result v7

    .line 1015
    .local v7, count:I
    if-gtz v7, :cond_0

    move v0, v10

    .line 1048
    :goto_0
    return v0

    .line 1019
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1020
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1025
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_6

    .line 1026
    const/16 v0, 0x8

    new-array v8, v0, [Ljava/lang/String;

    .line 1027
    .local v8, favoritesInfo:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerFavoriteInfo(I[Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1030
    const-string v0, "container"

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v0, "screen"

    const/4 v1, 0x3

    aget-object v1, v8, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v0, "cellX"

    const/4 v1, 0x4

    aget-object v1, v8, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v0, "cellY"

    const/4 v1, 0x5

    aget-object v1, v8, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v0, "favorite"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    aget-object v3, v8, v11

    const/4 v0, 0x2

    aget-object v4, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1025
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1037
    :cond_2
    const-string v0, "search"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1038
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_2

    .line 1039
    :cond_3
    const-string v0, "clock"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1040
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_2

    .line 1041
    :cond_4
    const-string v0, "appwidget"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1042
    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z

    goto :goto_2

    .line 1043
    :cond_5
    const-string v0, "samsungappwidget"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    invoke-direct {p0, p1, v2, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    goto :goto_2

    .end local v8           #favoritesInfo:[Ljava/lang/String;
    :cond_6
    move v0, v11

    .line 1048
    goto/16 :goto_0
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .parameter "db"

    .prologue
    .line 545
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 546
    .local v5, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 550
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 552
    .local v10, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 553
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 554
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "favorites"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 556
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 560
    .local v8, depth:I
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_4

    .line 562
    const/4 v0, 0x2

    if-ne v13, v0, :cond_0

    .line 566
    const/4 v6, 0x0

    .line 567
    .local v6, added:Z
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 569
    .local v11, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Favorite:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 571
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 572
    const-string v0, "container"

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    const-string v0, "screen"

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "cellX"

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v0, "cellY"

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "favorite"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    .line 582
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v6

    .line 595
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 597
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 599
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 600
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 607
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_2
    return v10

    .line 583
    .restart local v3       #a:Landroid/content/res/TypedArray;
    .restart local v6       #added:Z
    .restart local v7       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #depth:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v13       #type:I
    :cond_5
    :try_start_1
    const-string v0, "search"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_1

    .line 585
    :cond_6
    const-string v0, "clock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_1

    .line 587
    :cond_7
    const-string v0, "shortcut"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 588
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v6

    goto :goto_1

    .line 589
    :cond_8
    const-string v0, "appwidget"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 590
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v6

    goto :goto_1

    .line 591
    :cond_9
    const-string v0, "samsungappwidget"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_1

    .line 602
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 603
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 689
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 691
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 692
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 694
    .local v5, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 695
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 696
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "mainapps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 698
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 702
    .local v8, depth:I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    .line 704
    const/4 v0, 0x2

    if-ne v12, v0, :cond_0

    .line 708
    const/4 v6, 0x0

    .line 709
    .local v6, added:Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 711
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->MainApp:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 712
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 713
    const-string v0, "mainapp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    .line 714
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    .line 717
    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 719
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 721
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 722
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing mainapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 729
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_1
    return v5

    .line 724
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 725
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing mainapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 617
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 620
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 622
    .local v5, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 623
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 624
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "topapps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 626
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 630
    .local v8, depth:I
    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    .line 632
    const/4 v0, 0x2

    if-ne v12, v0, :cond_0

    .line 636
    const/4 v6, 0x0

    .line 637
    .local v6, added:Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 639
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->TopApp:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 640
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 641
    const-string v0, "topapp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    .line 642
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    .line 645
    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 647
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    const/4 v0, 0x3

    if-lt v5, v0, :cond_0

    .line 659
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :cond_4
    :goto_0
    return v5

    .line 651
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 652
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 655
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 225
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "creating new launcher database"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v2, "CREATE TABLE apps (_id INTEGER PRIMARY KEY,componentname TEXT,top_number INTEGER NOT NULL DEFAULT 65535,page_number INTEGER NOT NULL DEFAULT 65535,cell_number INTEGER NOT NULL DEFAULT 65535);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 270
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 286
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 288
    :cond_2
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v5, 0x3

    const-string v4, "Launcher.LauncherProvider"

    .line 388
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move v1, p2

    .line 391
    .local v1, version:I
    if-ge v1, v5, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 396
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const/4 v1, 0x3

    .line 405
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 409
    :goto_0
    if-ne v1, v5, :cond_0

    .line 410
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 417
    :try_start_1
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    const/4 v1, 0x4

    .line 434
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    :cond_1
    :goto_1
    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    .line 439
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    const-string v2, "DROP TABLE IF EXISTS gestures"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    const-string v2, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    :cond_2
    return-void

    .line 400
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 402
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 429
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 431
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 434
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
