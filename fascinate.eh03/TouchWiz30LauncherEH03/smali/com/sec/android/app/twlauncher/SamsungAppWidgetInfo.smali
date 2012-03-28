.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "SamsungAppWidgetInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field state:I

.field widgetId:I

.field widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 57
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;I)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;ILcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;ILcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"
    .parameter "widgetInfo"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    if-nez p3, :cond_1

    .line 161
    new-instance p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local p3
    invoke-direct {p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 162
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p3, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iput p2, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    move-object v2, p3

    .line 168
    .end local p3           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :goto_0
    const/4 v1, 0x0

    .line 169
    .local v1, contentView:Landroid/view/View;
    const/4 v4, 0x0

    .line 170
    .local v4, orientation:I
    instance-of p2, p0, Landroid/app/ActivityGroup;

    .end local p2
    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 171
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityGroup;

    move-object p2, v0

    .line 172
    .local p2, group:Landroid/app/ActivityGroup;
    invoke-virtual {p2}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    .line 174
    .local v3, manager:Landroid/app/LocalActivityManager;
    const/4 p2, 0x0

    .line 176
    .local p2, c:Landroid/content/Context;
    :try_start_0
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p0, p3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 181
    :goto_1
    if-eqz p2, :cond_0

    instance-of p3, p0, Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz p3, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object p3, v0

    .line 183
    .local p3, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getResOrientation()I

    move-result v4

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .end local p3           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 187
    .local p3, config:Landroid/content/res/Configuration;
    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v4, :cond_0

    .line 188
    iput v4, p3, Landroid/content/res/Configuration;->orientation:I

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .end local p2           #c:Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {v5, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 193
    .end local p3           #config:Landroid/content/res/Configuration;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 194
    .local p3, intent:Landroid/content/Intent;
    iget-object p2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {p3, p2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/4 v5, 0x0

    .line 197
    .local v5, w:Landroid/view/Window;
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v6, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p2

    .line 198
    .local p2, activity:Landroid/app/Activity;
    const-string v6, "SamsungAppWidgetInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  widgetId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-nez p2, :cond_3

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object p3

    .end local v5           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    move-object v5, p3

    .line 205
    .end local p3           #w:Landroid/view/Window;
    .restart local v5       #w:Landroid/view/Window;
    :goto_2
    const-string p3, "SamsungAppWidgetInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #manager:Landroid/app/LocalActivityManager;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[makeSamsungWidget] check window : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v5, :cond_4

    const-string v6, "null"

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v5, :cond_5

    const p3, 0x1020002

    invoke-virtual {v5, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    .line 208
    .local v3, mainView:Landroid/view/View;
    :goto_4
    if-eqz v3, :cond_6

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    const/4 p3, 0x0

    invoke-virtual {v6, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p3

    .line 210
    .end local v1           #contentView:Landroid/view/View;
    .local p3, contentView:Landroid/view/View;
    :goto_5
    if-eqz p3, :cond_7

    .line 211
    :try_start_2
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #mainView:Landroid/view/View;
    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object p2, p3

    .end local p3           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    :goto_6
    move-object p3, v5

    .line 232
    .end local v5           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    :goto_7
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .end local p3           #w:Landroid/view/Window;
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, p3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v4

    .line 235
    .end local v4           #orientation:I
    .local p3, orientation:I
    :goto_8
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .end local p0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result p1

    .end local p1
    invoke-direct {p0, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 237
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    if-eqz p2, :cond_b

    .line 240
    invoke-virtual {v1, p2, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :goto_9
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 247
    return-object v2

    .line 164
    .end local v2           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, widgetId:I
    .local p3, widgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_1
    move-object p3, p3

    .line 165
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p3, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v1, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iput p2, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    :cond_2
    move-object v2, p3

    .end local p3           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    goto/16 :goto_0

    .line 177
    .local v1, contentView:Landroid/view/View;
    .local v3, manager:Landroid/app/LocalActivityManager;
    .restart local v4       #orientation:I
    .local p2, c:Landroid/content/Context;
    :catch_0
    move-exception p3

    .line 178
    .local p3, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 202
    .restart local v5       #w:Landroid/view/Window;
    .local p2, activity:Landroid/app/Activity;
    .local p3, intent:Landroid/content/Intent;
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    .end local v5           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    move-object v5, p3

    .end local p3           #w:Landroid/view/Window;
    .restart local v5       #w:Landroid/view/Window;
    goto :goto_2

    .line 205
    .end local v3           #manager:Landroid/app/LocalActivityManager;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto :goto_3

    .line 207
    :cond_5
    const/4 p3, 0x0

    move-object v3, p3

    goto :goto_4

    .line 208
    .local v3, mainView:Landroid/view/View;
    :cond_6
    const/4 p3, 0x0

    goto :goto_5

    .line 213
    .end local v1           #contentView:Landroid/view/View;
    .local p3, contentView:Landroid/view/View;
    :cond_7
    :try_start_4
    const-string v1, "SamsungAppWidgetInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSamsungWidget] mainView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "SamsungAppWidgetInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSamsungWidget] contentView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p2, :cond_a

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    if-eqz v3, :cond_8

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    const/4 p2, 0x0

    invoke-virtual {v6, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local p2           #activity:Landroid/app/Activity;
    move-result-object p2

    .line 219
    .end local p3           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    :goto_a
    if-eqz p2, :cond_9

    .line 220
    :try_start_5
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #mainView:Landroid/view/View;
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    .line 227
    :catch_1
    move-exception p3

    move-object v1, v5

    .line 228
    .end local v5           #w:Landroid/view/Window;
    .local v1, w:Landroid/view/Window;
    .local p3, e:Ljava/lang/Exception;
    :goto_b
    const-string v3, "SamsungAppWidgetInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed startActivity("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    move-object p3, v1

    .end local v1           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    goto/16 :goto_7

    .line 218
    .restart local v3       #mainView:Landroid/view/View;
    .restart local v5       #w:Landroid/view/Window;
    .local p2, activity:Landroid/app/Activity;
    .local p3, contentView:Landroid/view/View;
    :cond_8
    const/4 p2, 0x0

    goto :goto_a

    .line 222
    .end local p3           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    :cond_9
    :try_start_6
    const-string p3, "SamsungAppWidgetInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[makeSamsungWidget] failed get widget view("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    .end local v3           #mainView:Landroid/view/View;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    .line 224
    .restart local v3       #mainView:Landroid/view/View;
    .local p2, activity:Landroid/app/Activity;
    .restart local p3       #contentView:Landroid/view/View;
    :cond_a
    :try_start_7
    const-string p2, "SamsungAppWidgetInfo"

    .end local p2           #activity:Landroid/app/Activity;
    const-string v1, "[makeSamsungWidget] activity is still null."

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object p2, p3

    .end local p3           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    goto/16 :goto_6

    .line 242
    .end local v3           #mainView:Landroid/view/View;
    .end local v4           #orientation:I
    .end local v5           #w:Landroid/view/Window;
    .end local p1
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    .local p3, orientation:I
    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 227
    .end local p2           #contentView:Landroid/view/View;
    .end local p3           #orientation:I
    .local v1, contentView:Landroid/view/View;
    .restart local v4       #orientation:I
    .restart local v5       #w:Landroid/view/Window;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catch_2
    move-exception p2

    move-object p3, p2

    move-object p2, v1

    .end local v1           #contentView:Landroid/view/View;
    .restart local p2       #contentView:Landroid/view/View;
    move-object v1, v5

    .end local v5           #w:Landroid/view/Window;
    .local v1, w:Landroid/view/Window;
    goto :goto_b

    .end local v1           #w:Landroid/view/Window;
    .end local p2           #contentView:Landroid/view/View;
    .restart local v5       #w:Landroid/view/Window;
    .local p3, contentView:Landroid/view/View;
    :catch_3
    move-exception p2

    move-object v1, v5

    .end local v5           #w:Landroid/view/Window;
    .restart local v1       #w:Landroid/view/Window;
    move-object v9, p2

    move-object p2, p3

    .end local p3           #contentView:Landroid/view/View;
    .restart local p2       #contentView:Landroid/view/View;
    move-object p3, v9

    goto :goto_b

    .end local p2           #contentView:Landroid/view/View;
    .local v1, contentView:Landroid/view/View;
    :cond_c
    move p3, v4

    .end local v4           #orientation:I
    .local p3, orientation:I
    move-object p2, v1

    .end local v1           #contentView:Landroid/view/View;
    .restart local p2       #contentView:Landroid/view/View;
    goto/16 :goto_8
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    check-cast p1, Landroid/app/ActivityGroup;

    .line 82
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 88
    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 89
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    aget-object v3, v1, v2

    .line 88
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_3
    if-eqz v3, :cond_0

    .line 96
    :try_start_0
    const-string v1, "fireOnPause"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 107
    :catch_3
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 109
    :catch_4
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 117
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    check-cast p1, Landroid/app/ActivityGroup;

    .line 120
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 127
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    aget-object v3, v1, v2

    .line 126
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_3
    if-eqz v3, :cond_0

    .line 134
    :try_start_0
    const-string v1, "fireOnResume"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 145
    :catch_3
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 147
    :catch_4
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 69
    .local v0, uri:Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    return-void

    .line 68
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamsungAppWidgetInfo. widgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 254
    return-void
.end method
