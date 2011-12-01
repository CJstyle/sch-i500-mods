.class final Lcom/android/providers/settings/SettingsProvider$SettingsCache;
.super Ljava/util/LinkedHashMap;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 624
    const/16 v0, 0x32

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 625
    return-void
.end method

.method public static forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .parameter "tableName"

    .prologue
    .line 652
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$100()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    .line 655
    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$200()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    .line 658
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "cache"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 703
    if-nez p0, :cond_0

    move v2, v4

    .line 710
    :goto_0
    return v2

    .line 704
    :cond_0
    monitor-enter p0

    .line 705
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 706
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, oldValue:Ljava/lang/String;
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 709
    :cond_2
    if-nez v1, :cond_3

    move v2, v3

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    if-eq v2, v3, :cond_5

    monitor-exit p0

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    .line 710
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0

    goto :goto_0

    .line 711
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #oldValue:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cache"
    .parameter "contentValues"

    .prologue
    const-string v3, "value"

    .line 665
    if-nez p0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 670
    const-string v2, "SettingsProvider"

    const-string v3, "null name populating settings cache."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_1
    const-string v2, "value"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, value:Ljava/lang/String;
    monitor-enter p0

    .line 675
    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_3

    .line 676
    :cond_2
    const-string v2, "value"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 678
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static wipe(Ljava/lang/String;)V
    .locals 2
    .parameter "tableName"

    .prologue
    .line 688
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 689
    .local v0, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_0

    .line 695
    :goto_0
    return-void

    .line 692
    :cond_0
    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->clear()V

    .line 694
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 640
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$000()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 641
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_2

    .line 642
    :cond_0
    monitor-enter p0

    .line 643
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :cond_2
    return-object v0

    .line 640
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 646
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter "eldest"

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
