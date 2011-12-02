.class Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
.super Ljava/lang/Object;
.source "DiscPlusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/util/DiscPlusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscInfo"
.end annotation


# instance fields
.field public image:Landroid/graphics/drawable/Drawable;

.field public isDefault:Z

.field public isUpdate:Z

.field public resStrIds:J

.field public str1:Ljava/lang/String;

.field public str2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "img"
    .parameter "strIds"
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-wide p2, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->resStrIds:J

    .line 55
    iput-object p4, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->str1:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->str2:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isUpdate:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isDefault:Z

    .line 59
    return-void
.end method
