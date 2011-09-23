.class Lcom/sec/android/app/twlauncher/ShortcutInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field badgeCount:I

.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field onExternalStorage:Z

.field title:Ljava/lang/CharSequence;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 95
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 96
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 98
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 80
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 82
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 88
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 89
    iget v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 90
    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 171
    .local v1, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " badgeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "iconCache"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "iconType"

    .line 129
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 132
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 135
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    .line 138
    const-string v2, "iconType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 154
    :cond_0
    :goto_2
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    move-object v0, v4

    .line 131
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .line 134
    goto :goto_1

    .line 142
    .restart local v1       #uri:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 145
    :cond_4
    const-string v2, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    .line 125
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    .line 164
    return-void
.end method
