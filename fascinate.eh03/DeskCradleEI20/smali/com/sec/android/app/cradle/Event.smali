.class public Lcom/sec/android/app/cradle/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static mGroupCount:I


# instance fields
.field public allDay:Z

.field public alldayOrg:Z

.field public bedrawed:Z

.field public calendarId:I

.field public color:I

.field public contactDataId:I

.field public contactRawId:I

.field public description:Ljava/lang/CharSequence;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public eventType:I

.field public facebook_photo_url:Ljava/lang/CharSequence;

.field public facebook_scheudle_id:Ljava/lang/CharSequence;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public latitude:I

.field public location:Ljava/lang/CharSequence;

.field public longitude:I

.field private mColumn:I

.field private mGroupId:I

.field private mMaxColumns:I

.field public organizer:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/cradle/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, aStr:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, bStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 320
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_0

    .line 325
    :cond_1
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_1
.end method

.method static computePositions(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    const/4 v0, 0x0

    .line 508
    if-nez p0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 511
    :cond_0
    sput v0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    .line 513
    invoke-static {p0, v0}, Lcom/sec/android/app/cradle/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/cradle/Event;->doComputePositions2(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public static constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "c"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    if-nez p2, :cond_1

    .line 492
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local p0
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 418
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 423
    .end local v0           #count:I
    .end local p0
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 424
    new-instance p0, Lcom/sec/android/app/cradle/Event;

    invoke-direct {p0}, Lcom/sec/android/app/cradle/Event;-><init>()V

    .line 426
    .local p0, e:Lcom/sec/android/app/cradle/Event;
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/cradle/Event;->id:J

    .line 427
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    .line 428
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->location:Ljava/lang/CharSequence;

    .line 429
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    .line 430
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->alldayOrg:Z

    .line 431
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->organizer:Ljava/lang/String;

    .line 432
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    .line 433
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->description:Ljava/lang/CharSequence;

    .line 435
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, timezone:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    .end local v0           #timezone:Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 441
    :cond_3
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->color:I

    .line 448
    :cond_4
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 449
    .local v2, eStart:J
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 451
    .local v0, eEnd:J
    iput-wide v2, p0, Lcom/sec/android/app/cradle/Event;->startMillis:J

    .line 452
    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    .end local v2           #eStart:J
    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/Event;->startTime:I

    .line 453
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/cradle/Event;->startDay:I

    .line 455
    iput-wide v0, p0, Lcom/sec/android/app/cradle/Event;->endMillis:J

    .line 456
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #eEnd:J
    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->endTime:I

    .line 457
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->endDay:I

    .line 459
    iget v0, p0, Lcom/sec/android/app/cradle/Event;->startDay:I

    if-gt v0, p4, :cond_2

    iget v0, p0, Lcom/sec/android/app/cradle/Event;->endDay:I

    if-lt v0, p3, :cond_2

    .line 463
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->hasAlarm:Z

    .line 466
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, rrule:Ljava/lang/String;
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, rdate:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #rrule:Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #rdate:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 469
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->isRepeating:Z

    .line 474
    :goto_6
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->selfAttendeeStatus:I

    .line 477
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->latitude:I

    .line 478
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->longitude:I

    .line 479
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->eventType:I

    .line 480
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->contactDataId:I

    .line 481
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->contactRawId:I

    .line 482
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 483
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 484
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/cradle/Event;->calendarId:I

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->bedrawed:Z

    .line 488
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 429
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 430
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 432
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 463
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 471
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/Event;->isRepeating:Z

    goto :goto_6

    .line 491
    .end local p0           #e:Lcom/sec/android/app/cradle/Event;
    :cond_b
    invoke-static {p1}, Lcom/sec/android/app/cradle/Event;->computePositions(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private static doComputePositions2(Ljava/util/ArrayList;Z)V
    .locals 14
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v4, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    const-wide/16 v1, 0x0

    .line 523
    .local v1, colMask:J
    const/4 v3, 0x0

    .line 524
    .local v3, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v7, v3

    .end local v3           #maxCols:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local p0           #eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    .local v7, maxCols:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/cradle/Event;

    .line 526
    .local v3, event:Lcom/sec/android/app/cradle/Event;
    iget-boolean p0, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-ne p0, p1, :cond_0

    .line 529
    invoke-virtual {v3}, Lcom/sec/android/app/cradle/Event;->getStartMillis()J

    move-result-wide v8

    .line 542
    .local v8, start:J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 544
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/cradle/Event;>;"
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 545
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/cradle/Event;

    .line 546
    .local p0, active:Lcom/sec/android/app/cradle/Event;
    iget-boolean v10, v3, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/Event;->getStartMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x1b7740

    add-long/2addr v10, v12

    cmp-long v10, v10, v8

    if-gtz v10, :cond_3

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    .end local p0           #active:Lcom/sec/android/app/cradle/Event;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 567
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/cradle/Event;

    .line 568
    .local p0, ev:Lcom/sec/android/app/cradle/Event;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/Event;->setMaxColumns(I)V

    .line 569
    sget v2, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/Event;->setGroupId(I)V

    goto :goto_2

    .line 550
    .local v1, colMask:J
    .local p0, active:Lcom/sec/android/app/cradle/Event;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/Event;->getEndMillis()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gtz v10, :cond_1

    .line 558
    const-wide/16 v10, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/cradle/Event;->getColumn()I

    move-result p0

    .end local p0           #active:Lcom/sec/android/app/cradle/Event;
    shl-long/2addr v10, p0

    const-wide/16 v12, -0x1

    xor-long/2addr v10, v12

    and-long/2addr v1, v10

    .line 559
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 571
    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    sget p0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    .line 572
    const/4 p0, 0x0

    .line 573
    .end local v7           #maxCols:I
    .local p0, maxCols:I
    const-wide/16 v1, 0x0

    .line 574
    .local v1, colMask:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v6, p0

    .line 579
    .end local p0           #maxCols:I
    .local v6, maxCols:I
    :goto_3
    invoke-static {v1, v2}, Lcom/sec/android/app/cradle/Event;->findFirstZeroBit(J)I

    move-result p0

    .line 580
    .local p0, col:I
    const/16 v7, 0x40

    if-ne p0, v7, :cond_5

    .line 581
    const/16 p0, 0x3f

    .line 582
    :cond_5
    const-wide/16 v7, 0x1

    shl-long/2addr v7, p0

    or-long/2addr v1, v7

    .line 583
    invoke-virtual {v3, p0}, Lcom/sec/android/app/cradle/Event;->setColumn(I)V

    .line 584
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 587
    .local p0, len:I
    if-ge v6, p0, :cond_8

    .line 588
    move p0, p0

    .end local v6           #maxCols:I
    .local p0, maxCols:I
    :goto_4
    move v7, p0

    .line 589
    .end local p0           #maxCols:I
    .restart local v7       #maxCols:I
    goto/16 :goto_0

    .line 590
    .end local v3           #event:Lcom/sec/android/app/cradle/Event;
    .end local v8           #start:J
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .end local v0           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    .local p1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/cradle/Event;

    .line 591
    .local p0, ev:Lcom/sec/android/app/cradle/Event;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/cradle/Event;->setMaxColumns(I)V

    .line 592
    sget v0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/Event;->setGroupId(I)V

    goto :goto_5

    .line 594
    .end local p0           #ev:Lcom/sec/android/app/cradle/Event;
    :cond_7
    sget p0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/android/app/cradle/Event;->mGroupCount:I

    .line 595
    return-void

    .end local v7           #maxCols:I
    .restart local v0       #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    .restart local v3       #event:Lcom/sec/android/app/cradle/Event;
    .restart local v6       #maxCols:I
    .restart local v8       #start:J
    .local p0, len:I
    .local p1, doAllDayEvents:Z
    :cond_8
    move p0, v6

    .end local v6           #maxCols:I
    .local p0, maxCols:I
    goto :goto_4

    .end local p0           #maxCols:I
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/cradle/Event;>;"
    .restart local v7       #maxCols:I
    :cond_9
    move v6, v7

    .end local v7           #maxCols:I
    .local v6, maxCols:I
    goto :goto_3
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v5, 0x40

    .line 668
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 669
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v0

    .line 672
    :goto_1
    return v1

    .line 668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 672
    goto :goto_1
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .locals 16
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .parameter "ignoreRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    const/4 v13, 0x0

    .line 342
    .local v13, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 344
    :try_start_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 346
    .local v5, local:Landroid/text/format/Time;
    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 347
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 348
    .local v15, startDay:I
    add-int v14, v15, p4

    .line 350
    .local v14, endDay:I
    iget v6, v5, Landroid/text/format/Time;->monthDay:I

    add-int p4, p4, v6

    move/from16 v0, p4

    move-object v1, v5

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 351
    .end local p4
    const/16 p4, 0x1

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 368
    .local v9, end:J
    const-string v12, "begin ASC, end DESC, title ASC"

    .line 371
    .local v12, orderBy:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 372
    .local p4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "preferences_hide_declined"

    .end local v5           #local:Landroid/text/format/Time;
    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 375
    .local p4, hideDeclined:Z
    const/4 v11, 0x0

    .line 376
    .local v11, where:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 377
    const-string v11, "selfAttendeeStatus!=2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/cradle/Event;->PROJECTION:[Ljava/lang/String;

    const-wide/32 v7, 0x5265c00

    sub-long v7, p2, v7

    const-wide/32 p2, 0x5265c00

    add-long v9, v9, p2

    invoke-static/range {v5 .. v12}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #end:J
    .end local p2
    move-result-object p2

    .line 389
    .end local v13           #c:Landroid/database/Cursor;
    .local p2, c:Landroid/database/Cursor;
    :goto_0
    if-nez p2, :cond_2

    .line 390
    :try_start_2
    const-string p0, "Cal"

    .end local p0
    const-string p1, "loadEvents() returned null cursor!"

    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    if-eqz p2, :cond_1

    .line 403
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    :goto_1
    return-void

    .line 383
    .end local p2           #c:Landroid/database/Cursor;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local p0
    .restart local p1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    :catch_0
    move-exception p2

    .line 386
    .local p2, e:Ljava/lang/Exception;
    :try_start_3
    const-string p2, "Cal"

    .end local p2           #e:Ljava/lang/Exception;
    const-string p3, "Query Error"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 p2, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p2, c:Landroid/database/Cursor;
    goto :goto_0

    .line 396
    :cond_2
    if-nez p7, :cond_3

    :try_start_4
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result p3

    move/from16 v0, p5

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    .line 402
    if-eqz p2, :cond_1

    .line 403
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 400
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/cradle/Event;->constructEventList(Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 402
    if-eqz p2, :cond_1

    .line 403
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 402
    .end local v11           #where:Ljava/lang/String;
    .end local v12           #orderBy:Ljava/lang/String;
    .end local v14           #endDay:I
    .end local v15           #startDay:I
    .end local p2           #c:Landroid/database/Cursor;
    .end local p4           #hideDeclined:Z
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #c:Landroid/database/Cursor;
    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    .local p0, c:Landroid/database/Cursor;
    :goto_2
    if-eqz p0, :cond_4

    .line 403
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    .line 402
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v11       #where:Ljava/lang/String;
    .restart local v12       #orderBy:Ljava/lang/String;
    .restart local v14       #endDay:I
    .restart local v15       #startDay:I
    .restart local p2       #c:Landroid/database/Cursor;
    .restart local p4       #hideDeclined:Z
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_2
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/sec/android/app/cradle/Event;

    invoke-direct {v0}, Lcom/sec/android/app/cradle/Event;-><init>()V

    .line 168
    .local v0, e:Lcom/sec/android/app/cradle/Event;
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    .line 169
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->color:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->color:I

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->location:Ljava/lang/CharSequence;

    .line 171
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    .line 172
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/Event;->alldayOrg:Z

    iput-boolean v1, v0, Lcom/sec/android/app/cradle/Event;->alldayOrg:Z

    .line 173
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->startDay:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->startDay:I

    .line 174
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->endDay:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->endDay:I

    .line 175
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->startTime:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->startTime:I

    .line 176
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->endTime:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->endTime:I

    .line 177
    iget-wide v1, p0, Lcom/sec/android/app/cradle/Event;->startMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/cradle/Event;->startMillis:J

    .line 178
    iget-wide v1, p0, Lcom/sec/android/app/cradle/Event;->endMillis:J

    iput-wide v1, v0, Lcom/sec/android/app/cradle/Event;->endMillis:J

    .line 179
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/sec/android/app/cradle/Event;->hasAlarm:Z

    .line 180
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/sec/android/app/cradle/Event;->isRepeating:Z

    .line 181
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->selfAttendeeStatus:I

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->organizer:Ljava/lang/String;

    .line 183
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->description:Ljava/lang/CharSequence;

    .line 186
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->latitude:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->latitude:I

    .line 187
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->longitude:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->longitude:I

    .line 188
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->eventType:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->eventType:I

    .line 189
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->contactDataId:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->contactDataId:I

    .line 190
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->contactRawId:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->contactRawId:I

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/cradle/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/sec/android/app/cradle/Event;->facebook_photo_url:Ljava/lang/CharSequence;

    .line 193
    iget v1, p0, Lcom/sec/android/app/cradle/Event;->calendarId:I

    iput v1, v0, Lcom/sec/android/app/cradle/Event;->calendarId:I

    .line 194
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 262
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/cradle/Event;

    move-object v2, v0

    .line 265
    .local v2, e:Lcom/sec/android/app/cradle/Event;
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->startDay:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->startDay:I

    if-ge v3, v4, :cond_0

    move v3, v5

    .line 303
    :goto_0
    return v3

    .line 266
    :cond_0
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->startDay:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->startDay:I

    if-le v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    .line 267
    :cond_1
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->startTime:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->startTime:I

    if-ge v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    .line 268
    :cond_2
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->startTime:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->startTime:I

    if-le v3, v4, :cond_3

    move v3, v6

    goto :goto_0

    .line 272
    :cond_3
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->endDay:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->endDay:I

    if-ge v3, v4, :cond_4

    move v3, v6

    goto :goto_0

    .line 273
    :cond_4
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->endDay:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->endDay:I

    if-le v3, v4, :cond_5

    move v3, v5

    goto :goto_0

    .line 274
    :cond_5
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->endTime:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->endTime:I

    if-ge v3, v4, :cond_6

    move v3, v6

    goto :goto_0

    .line 275
    :cond_6
    iget v3, p0, Lcom/sec/android/app/cradle/Event;->endTime:I

    iget v4, v2, Lcom/sec/android/app/cradle/Event;->endTime:I

    if-le v3, v4, :cond_7

    move v3, v5

    goto :goto_0

    .line 278
    :cond_7
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v2, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-nez v3, :cond_8

    move v3, v5

    goto :goto_0

    .line 279
    :cond_8
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-nez v3, :cond_9

    iget-boolean v3, v2, Lcom/sec/android/app/cradle/Event;->allDay:Z

    if-eqz v3, :cond_9

    move v3, v6

    goto :goto_0

    .line 281
    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v2, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    if-nez v3, :cond_a

    move v3, v5

    goto :goto_0

    .line 282
    :cond_a
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    if-nez v3, :cond_b

    iget-boolean v3, v2, Lcom/sec/android/app/cradle/Event;->guestsCanModify:Z

    if-eqz v3, :cond_b

    move v3, v6

    goto :goto_0

    .line 286
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/sec/android/app/cradle/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/cradle/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 287
    .local v1, cmp:I
    if-eqz v1, :cond_c

    move v3, v1

    .line 288
    goto :goto_0

    .line 294
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/cradle/Event;->location:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/sec/android/app/cradle/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/cradle/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 295
    if-eqz v1, :cond_d

    move v3, v1

    .line 296
    goto :goto_0

    .line 299
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/cradle/Event;->organizer:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/android/app/cradle/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/cradle/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 300
    if-eqz v1, :cond_e

    move v3, v1

    .line 301
    goto/16 :goto_0

    .line 303
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/sec/android/app/cradle/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 836
    iget-wide v0, p0, Lcom/sec/android/app/cradle/Event;->endMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/sec/android/app/cradle/Event;->startMillis:J

    return-wide v0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 808
    iput p1, p0, Lcom/sec/android/app/cradle/Event;->mColumn:I

    .line 809
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 800
    iput p1, p0, Lcom/sec/android/app/cradle/Event;->mGroupId:I

    .line 801
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 816
    iput p1, p0, Lcom/sec/android/app/cradle/Event;->mMaxColumns:I

    .line 817
    return-void
.end method
