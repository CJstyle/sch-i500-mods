.class Lcom/sec/android/app/twlauncher/ApplicationInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "ApplicationInfo.java"


# instance fields
.field badgeCount:I

.field cellNum:I

.field componentName:Landroid/content/ComponentName;

.field editCellNum:I

.field editPageNum:I

.field editTopNum:I

.field iconBgBitmap:Landroid/graphics/Bitmap;

.field iconBitmap:Landroid/graphics/Bitmap;

.field intent:Landroid/content/Intent;

.field isUpdated:Z

.field mIsAppStoredInExternalStorage:Z

.field pageNum:I

.field systemApp:Z

.field title:Ljava/lang/CharSequence;

.field titleBitmap:Landroid/graphics/Bitmap;

.field topNum:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const v0, 0xffff

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 65
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 66
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 67
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 70
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 71
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V
    .locals 3
    .parameter "info"
    .parameter "iconCache"

    .prologue
    const v0, 0xffff

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 65
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 66
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 67
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 70
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 71
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 96
    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/twlauncher/IconCache;->getTitleAndIcon(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const v0, 0xffff

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 65
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 66
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 67
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 70
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 71
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 101
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 102
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 105
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    .line 106
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 107
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 108
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 109
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 110
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 111
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 112
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 113
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 116
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 117
    return-void
.end method


# virtual methods
.method public makeShortcut()Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    return-object v0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

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
