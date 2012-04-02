.class Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;
.super Ljava/lang/Object;
.source "ScreenSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NonRepeatNumber"
.end annotation


# instance fields
.field private lNonRepeatNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/sec/android/app/cradle/ScreenSaver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/ScreenSaver;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lRandom:Ljava/util/Random;

    .line 358
    return-void
.end method

.method private isNumberAvailable(I)Z
    .locals 2
    .parameter "lcheckNumber"

    .prologue
    .line 381
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 386
    :goto_1
    return v1

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getNextInt(II)I
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lRandom:Ljava/util/Random;

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v0, v1, p1

    .line 365
    .local v0, dummyNumber:I
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lNonRepeatNumberList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    return v0

    .line 368
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->isNumberAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/cradle/ScreenSaver$NonRepeatNumber;->lRandom:Ljava/util/Random;

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v0, v1, p1

    goto :goto_0
.end method
