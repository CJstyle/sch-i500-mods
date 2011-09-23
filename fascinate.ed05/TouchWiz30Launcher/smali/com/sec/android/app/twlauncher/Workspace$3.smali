.class Lcom/sec/android/app/twlauncher/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;

.field final synthetic val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

.field final synthetic val$manager:Landroid/content/pm/PackageManager;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/CellLayout;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$manager:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 1969
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    .local v6, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v5

    .line 1973
    .local v5, childCount:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    if-ge v13, v5, :cond_c

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1975
    .local v24, view:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 1977
    .local v21, tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 1978
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v11, v0

    .line 1979
    .local v11, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v12, v11, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1980
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 1982
    .local v16, name:Landroid/content/ComponentName;
    const-string v25, "android.intent.action.MAIN"

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    if-eqz v16, :cond_5

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1984
    .local v17, packageName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1987
    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1991
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #name:Landroid/content/ComponentName;
    .end local v17           #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1992
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v11, v0

    .line 1993
    .local v11, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v7, v11, Lcom/sec/android/app/twlauncher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 1994
    .local v7, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1995
    .local v22, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1996
    .local v8, contentsCount:I
    const/16 v20, 0x0

    .line 1998
    .local v20, removedFromFolder:Z
    const/4 v14, 0x0

    .local v14, k:I
    :goto_2
    if-ge v14, v8, :cond_4

    .line 1999
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 2000
    .local v3, appInfo:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v12, v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2001
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 2003
    .restart local v16       #name:Landroid/content/ComponentName;
    const-string v25, "android.intent.action.MAIN"

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    if-eqz v16, :cond_3

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2005
    .restart local v17       #packageName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2006
    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2010
    const/16 v20, 0x1

    goto :goto_3

    .line 1998
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #packageName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2016
    .end local v3           #appInfo:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #name:Landroid/content/ComponentName;
    :cond_4
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2017
    if-eqz v20, :cond_5

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v9

    .line 2019
    .local v9, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Folder;->notifyDataSetChanged()V

    .line 1973
    .end local v7           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    .end local v8           #contentsCount:I
    .end local v9           #folder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v11           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v14           #k:I
    .end local v20           #removedFromFolder:Z
    .end local v22           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2021
    :cond_6
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 2022
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-object v11, v0

    .line 2023
    .local v11, info:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    move-object/from16 v23, v0

    .line 2024
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$manager:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v19

    .line 2027
    .local v19, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v19, :cond_5

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2029
    .restart local v17       #packageName:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2032
    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2036
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v17           #packageName:Ljava/lang/String;
    .end local v19           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 2037
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v11, v0

    .line 2038
    .local v11, info:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v25, v0

    move-object v0, v11

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v18

    .line 2040
    .local v18, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v18, :cond_5

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2042
    .restart local v17       #packageName:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2045
    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2049
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_a
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2050
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v11, v0

    .line 2051
    .local v11, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v15

    .line 2052
    .local v15, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2053
    .restart local v17       #packageName:Ljava/lang/String;
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object v0, v15

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Workspace;->access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2057
    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2063
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .end local v15           #manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .end local v17           #packageName:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/Object;
    .end local v24           #view:Landroid/view/View;
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2064
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v5, :cond_d

    .line 2065
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2066
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2064
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2069
    .end local v4           #child:Landroid/view/View;
    :cond_d
    if-lez v5, :cond_e

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/CellLayout;->requestLayout()V

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace$3;->val$layout:Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 2073
    :cond_e
    return-void
.end method
