.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;
.super Ljava/lang/Object;
.source "AxT9KeyIconMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

.field public static final KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private mKeyIconInfoHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 53
    const/16 v0, 0xd2

    new-array v9, v0, [Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200e5

    const v6, 0x7f0200e6

    const v7, 0x7f0200e6

    const v8, 0x7f0200e5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200e7

    const v6, 0x7f0200e8

    const v7, 0x7f0200e8

    const v8, 0x7f0200e7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const v7, 0x7f0200ea

    const v8, 0x7f0200e9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200eb

    const v6, 0x7f0200ec

    const v7, 0x7f0200ec

    const v8, 0x7f0200eb

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200ed

    const v6, 0x7f0200ee

    const v7, 0x7f0200ee

    const v8, 0x7f0200ed

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200ef

    const v6, 0x7f0200f0

    const v7, 0x7f0200f0

    const v8, 0x7f0200ef

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200f1

    const v6, 0x7f0200f2

    const v7, 0x7f0200f2

    const v8, 0x7f0200f1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200f3

    const v6, 0x7f0200f4

    const v7, 0x7f0200f4

    const v8, 0x7f0200f3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200f5

    const v6, 0x7f0200f6

    const v7, 0x7f0200f6

    const v8, 0x7f0200f5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200e3

    const v6, 0x7f0200e4

    const v7, 0x7f0200e4

    const v8, 0x7f0200e3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200f9

    const v6, 0x7f0200fa

    const v7, 0x7f0200fa

    const v8, 0x7f0200f9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0200fb

    const v6, 0x7f0200fc

    const v7, 0x7f0200fc

    const v8, 0x7f0200fb

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200e5

    const v6, 0x7f0200e6

    const v7, 0x7f0200e6

    const v8, 0x7f0200e5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200e7

    const v6, 0x7f0200e8

    const v7, 0x7f0200e8

    const v8, 0x7f0200e7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const v7, 0x7f0200ea

    const v8, 0x7f0200e9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200eb

    const v6, 0x7f0200ec

    const v7, 0x7f0200ec

    const v8, 0x7f0200eb

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200ed

    const v6, 0x7f0200ee

    const v7, 0x7f0200ee

    const v8, 0x7f0200ed

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200ef

    const v6, 0x7f0200f0

    const v7, 0x7f0200f0

    const v8, 0x7f0200ef

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200f1

    const v6, 0x7f0200f2

    const v7, 0x7f0200f2

    const v8, 0x7f0200f1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200f3

    const v6, 0x7f0200f4

    const v7, 0x7f0200f4

    const v8, 0x7f0200f3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200f5

    const v6, 0x7f0200f6

    const v7, 0x7f0200f6

    const v8, 0x7f0200f5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200e3

    const v6, 0x7f0200e4

    const v7, 0x7f0200e4

    const v8, 0x7f0200e3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200f9

    const v6, 0x7f0200fa

    const v7, 0x7f0200fa

    const v8, 0x7f0200f9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f0200fb

    const v6, 0x7f0200fc

    const v7, 0x7f0200fc

    const v8, 0x7f0200fb

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020062

    const v6, 0x7f020063

    const v7, 0x7f020063

    const v8, 0x7f020062

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020064

    const v6, 0x7f020065

    const v7, 0x7f020065

    const v8, 0x7f020064

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020066

    const v6, 0x7f020067

    const v7, 0x7f020067

    const v8, 0x7f020066

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020068

    const v6, 0x7f020069

    const v7, 0x7f020069

    const v8, 0x7f020068

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f02006a

    const v6, 0x7f02006b

    const v7, 0x7f02006b

    const v8, 0x7f02006a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f02006c

    const v6, 0x7f02006d

    const v7, 0x7f02006d

    const v8, 0x7f02006c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f02006e

    const v6, 0x7f02006f

    const v7, 0x7f02006f

    const v8, 0x7f02006e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020070

    const v6, 0x7f020071

    const v7, 0x7f020071

    const v8, 0x7f020070

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020072

    const v6, 0x7f020073

    const v7, 0x7f020073

    const v8, 0x7f020072

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020060

    const v6, 0x7f020061

    const v7, 0x7f020061

    const v8, 0x7f020060

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020074

    const v6, 0x7f020075

    const v7, 0x7f020075

    const v8, 0x7f020074

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020076

    const v6, 0x7f020077

    const v7, 0x7f020077

    const v8, 0x7f020076

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0x7f020090

    const v6, 0x7f020091

    const v7, 0x7f020091

    const v8, 0x7f020090

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020062

    const v6, 0x7f020063

    const v7, 0x7f020063

    const v8, 0x7f020062

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020064

    const v6, 0x7f020065

    const v7, 0x7f020065

    const v8, 0x7f020064

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020066

    const v6, 0x7f020067

    const v7, 0x7f020067

    const v8, 0x7f020066

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020068

    const v6, 0x7f020069

    const v7, 0x7f020069

    const v8, 0x7f020068

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f02006a

    const v6, 0x7f02006b

    const v7, 0x7f02006b

    const v8, 0x7f02006a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f02006c

    const v6, 0x7f02006d

    const v7, 0x7f02006d

    const v8, 0x7f02006c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f02006e

    const v6, 0x7f02006f

    const v7, 0x7f02006f

    const v8, 0x7f02006e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020070

    const v6, 0x7f020071

    const v7, 0x7f020071

    const v8, 0x7f020070

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020072

    const v6, 0x7f020073

    const v7, 0x7f020073

    const v8, 0x7f020072

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020060

    const v6, 0x7f020061

    const v7, 0x7f020061

    const v8, 0x7f020060

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020074

    const v6, 0x7f020075

    const v7, 0x7f020075

    const v8, 0x7f020074

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f020076

    const v6, 0x7f020077

    const v7, 0x7f020077

    const v8, 0x7f020076

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xc

    const v5, 0x7f02005e

    const v6, 0x7f02005f

    const v7, 0x7f02005f

    const v8, 0x7f02005e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020078

    const v6, 0x7f020079

    const v7, 0x7f020079

    const v8, 0x7f020078

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f02007a

    const v6, 0x7f02007b

    const v7, 0x7f02007b

    const v8, 0x7f02007a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x29

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f02007c

    const v6, 0x7f02007d

    const v7, 0x7f02007d

    const v8, 0x7f02007c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x4e

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f02007e

    const v6, 0x7f02007f

    const v7, 0x7f02007f

    const v8, 0x7f02007e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020080

    const v6, 0x7f020081

    const v7, 0x7f020081

    const v8, 0x7f020080

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x37

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020082

    const v6, 0x7f020083

    const v7, 0x7f020083

    const v8, 0x7f020082

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x38

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020084

    const v6, 0x7f020085

    const v7, 0x7f020085

    const v8, 0x7f020084

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x39

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020086

    const v6, 0x7f020087

    const v7, 0x7f020087

    const v8, 0x7f020086

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020088

    const v6, 0x7f020089

    const v7, 0x7f020089

    const v8, 0x7f020088

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f02008c

    const v6, 0x7f02008d

    const v7, 0x7f02008d

    const v8, 0x7f02008c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f020090

    const v6, 0x7f020091

    const v7, 0x7f020091

    const v8, 0x7f020090

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020046

    const v6, 0x7f020047

    const v7, 0x7f020047

    const v8, 0x7f020046

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020048

    const v6, 0x7f020049

    const v7, 0x7f020049

    const v8, 0x7f020048

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x29

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f02004a

    const v6, 0x7f02004b

    const v7, 0x7f02004b

    const v8, 0x7f02004a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x40

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x4e

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f02004c

    const v6, 0x7f02004d

    const v7, 0x7f02004d

    const v8, 0x7f02004c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x41

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f02004e

    const v6, 0x7f02004f

    const v7, 0x7f02004f

    const v8, 0x7f02004e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x42

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020050

    const v6, 0x7f020051

    const v7, 0x7f020051

    const v8, 0x7f020050

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x43

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020052

    const v6, 0x7f020053

    const v7, 0x7f020053

    const v8, 0x7f020052

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x44

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020054

    const v6, 0x7f020055

    const v7, 0x7f020055

    const v8, 0x7f020054

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x45

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f020056

    const v6, 0x7f020057

    const v7, 0x7f020057

    const v8, 0x7f020056

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x46

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f02005a

    const v6, 0x7f02005b

    const v7, 0x7f02005b

    const v8, 0x7f02005a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x47

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xc

    const v5, 0x7f02005e

    const v6, 0x7f02005f

    const v7, 0x7f02005f

    const v8, 0x7f02005e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x48

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020103

    const v6, 0x7f020104

    const v7, 0x7f020104

    const v8, 0x7f020103

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x49

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020105

    const v6, 0x7f020106

    const v7, 0x7f020106

    const v8, 0x7f020105

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020107

    const v6, 0x7f020108

    const v7, 0x7f020108

    const v8, 0x7f020107

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020109

    const v6, 0x7f02010a

    const v7, 0x7f02010a

    const v8, 0x7f020109

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f02010b

    const v6, 0x7f02010c

    const v7, 0x7f02010c

    const v8, 0x7f02010b

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f02010d

    const v6, 0x7f02010e

    const v7, 0x7f02010e

    const v8, 0x7f02010d

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f02010f

    const v6, 0x7f020110

    const v7, 0x7f020110

    const v8, 0x7f02010f

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020111

    const v6, 0x7f020112

    const v7, 0x7f020112

    const v8, 0x7f020111

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x50

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020113

    const v6, 0x7f020114

    const v7, 0x7f020114

    const v8, 0x7f020113

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x51

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x52

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x53

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x54

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020103

    const v6, 0x7f020104

    const v7, 0x7f020104

    const v8, 0x7f020103

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x55

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020105

    const v6, 0x7f020106

    const v7, 0x7f020106

    const v8, 0x7f020105

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x56

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020107

    const v6, 0x7f020108

    const v7, 0x7f020108

    const v8, 0x7f020107

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x57

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020109

    const v6, 0x7f02010a

    const v7, 0x7f02010a

    const v8, 0x7f020109

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x58

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f02010b

    const v6, 0x7f02010c

    const v7, 0x7f02010c

    const v8, 0x7f02010b

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x59

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f02010d

    const v6, 0x7f02010e

    const v7, 0x7f02010e

    const v8, 0x7f02010d

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f02010f

    const v6, 0x7f020110

    const v7, 0x7f020110

    const v8, 0x7f02010f

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020111

    const v6, 0x7f020112

    const v7, 0x7f020112

    const v8, 0x7f020111

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020113

    const v6, 0x7f020114

    const v7, 0x7f020114

    const v8, 0x7f020113

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f020101

    const v6, 0x7f020102

    const v7, 0x7f020102

    const v8, 0x7f020101

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x60

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200b9

    const v6, 0x7f0200ba

    const v7, 0x7f0200ba

    const v8, 0x7f0200b9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x61

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200bb

    const v6, 0x7f0200bc

    const v7, 0x7f0200bc

    const v8, 0x7f0200bb

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x62

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200bd

    const v6, 0x7f0200be

    const v7, 0x7f0200be

    const v8, 0x7f0200bd

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x63

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200bf

    const v6, 0x7f0200c0

    const v7, 0x7f0200c0

    const v8, 0x7f0200bf

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x64

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200c1

    const v6, 0x7f0200c2

    const v7, 0x7f0200c2

    const v8, 0x7f0200c1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x65

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200c3

    const v6, 0x7f0200c4

    const v7, 0x7f0200c4

    const v8, 0x7f0200c3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x66

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200c5

    const v6, 0x7f0200c6

    const v7, 0x7f0200c6

    const v8, 0x7f0200c5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x67

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200c7

    const v6, 0x7f0200c8

    const v7, 0x7f0200c8

    const v8, 0x7f0200c7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x68

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200c9

    const v6, 0x7f0200ca

    const v7, 0x7f0200ca

    const v8, 0x7f0200c9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x69

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0200b7

    const v6, 0x7f0200b8

    const v7, 0x7f0200b8

    const v8, 0x7f0200b7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x71

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201dc

    const v6, 0x7f0201dd

    const v7, 0x7f0201dc

    const v8, 0x7f0201dc

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x77

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201de

    const v6, 0x7f0201df

    const v7, 0x7f0201de

    const v8, 0x7f0201de

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201e0

    const v6, 0x7f0201e1

    const v7, 0x7f0201e0

    const v8, 0x7f0201e0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x72

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201e2

    const v6, 0x7f0201e3

    const v7, 0x7f0201e2

    const v8, 0x7f0201e2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201e4

    const v6, 0x7f0201e5

    const v7, 0x7f0201e4

    const v8, 0x7f0201e4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x79

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201e6

    const v6, 0x7f0201e7

    const v7, 0x7f0201e6

    const v8, 0x7f0201e6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x70

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x75

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201e8

    const v6, 0x7f0201e9

    const v7, 0x7f0201e8

    const v8, 0x7f0201e8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x71

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x69

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201ea

    const v6, 0x7f0201eb

    const v7, 0x7f0201ea

    const v8, 0x7f0201ea

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x72

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201ec

    const v6, 0x7f0201ed

    const v7, 0x7f0201ec

    const v8, 0x7f0201ec

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x73

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201ee

    const v6, 0x7f0201ef

    const v7, 0x7f0201ee

    const v8, 0x7f0201ee

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x74

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x61

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201f0

    const v6, 0x7f0201f1

    const v7, 0x7f0201f0

    const v8, 0x7f0201f0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x75

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x73

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201f2

    const v6, 0x7f0201f3

    const v7, 0x7f0201f2

    const v8, 0x7f0201f2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x76

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201f4

    const v6, 0x7f0201f5

    const v7, 0x7f0201f4

    const v8, 0x7f0201f4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x77

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x66

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201f6

    const v6, 0x7f0201f7

    const v7, 0x7f0201f6

    const v8, 0x7f0201f6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x78

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x67

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201f8

    const v6, 0x7f0201f9

    const v7, 0x7f0201f8

    const v8, 0x7f0201f8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x79

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201fa

    const v6, 0x7f0201fb

    const v7, 0x7f0201fa

    const v8, 0x7f0201fa

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201fc

    const v6, 0x7f0201fd

    const v7, 0x7f0201fc

    const v8, 0x7f0201fc

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f0201fe

    const v6, 0x7f0201ff

    const v7, 0x7f0201fe

    const v8, 0x7f0201fe

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f020200

    const v6, 0x7f020201

    const v7, 0x7f020200

    const v8, 0x7f020200

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x7a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f020202

    const v6, 0x7f020203

    const v7, 0x7f020202

    const v8, 0x7f020202

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x78

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f020204

    const v6, 0x7f020205

    const v7, 0x7f020204

    const v8, 0x7f020204

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x63

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f020206

    const v6, 0x7f020207

    const v7, 0x7f020206

    const v8, 0x7f020206

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x80

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x76

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f020208

    const v6, 0x7f020209

    const v7, 0x7f020208

    const v8, 0x7f020208

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x81

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x62

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f02020a

    const v6, 0x7f02020b

    const v7, 0x7f02020a

    const v8, 0x7f02020a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x82

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6e

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f02020c

    const v6, 0x7f02020d

    const v7, 0x7f02020c

    const v8, 0x7f02020c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x83

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f02020e

    const v6, 0x7f02020f

    const v7, 0x7f02020e

    const v8, 0x7f02020e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x84

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x71

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020210

    const v6, 0x7f020211

    const v7, 0x7f020210

    const v8, 0x7f020210

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x85

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x77

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020212

    const v6, 0x7f020213

    const v7, 0x7f020212

    const v8, 0x7f020212

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x86

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020214

    const v6, 0x7f020215

    const v7, 0x7f020214

    const v8, 0x7f020214

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x87

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x72

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020216

    const v6, 0x7f020217

    const v7, 0x7f020216

    const v8, 0x7f020216

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x88

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020218

    const v6, 0x7f020219

    const v7, 0x7f020218

    const v8, 0x7f020218

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x89

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x79

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201e6

    const v6, 0x7f0201e7

    const v7, 0x7f0201e6

    const v8, 0x7f0201e6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x75

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201e8

    const v6, 0x7f0201e9

    const v7, 0x7f0201e8

    const v8, 0x7f0201e8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x69

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201ea

    const v6, 0x7f0201eb

    const v7, 0x7f0201ea

    const v8, 0x7f0201ea

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f02021a

    const v6, 0x7f02021b

    const v7, 0x7f02021a

    const v8, 0x7f02021a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f02021c

    const v6, 0x7f02021d

    const v7, 0x7f02021c

    const v8, 0x7f02021c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x61

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201f0

    const v6, 0x7f0201f1

    const v7, 0x7f0201f0

    const v8, 0x7f0201f0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x73

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201f2

    const v6, 0x7f0201f3

    const v7, 0x7f0201f2

    const v8, 0x7f0201f2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x90

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201f4

    const v6, 0x7f0201f5

    const v7, 0x7f0201f4

    const v8, 0x7f0201f4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x91

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x66

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201f6

    const v6, 0x7f0201f7

    const v7, 0x7f0201f6

    const v8, 0x7f0201f6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x92

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x67

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201f8

    const v6, 0x7f0201f9

    const v7, 0x7f0201f8

    const v8, 0x7f0201f8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x93

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201fa

    const v6, 0x7f0201fb

    const v7, 0x7f0201fa

    const v8, 0x7f0201fa

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x94

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201fc

    const v6, 0x7f0201fd

    const v7, 0x7f0201fc

    const v8, 0x7f0201fc

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x95

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f0201fe

    const v6, 0x7f0201ff

    const v7, 0x7f0201fe

    const v8, 0x7f0201fe

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x96

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020200

    const v6, 0x7f020201

    const v7, 0x7f020200

    const v8, 0x7f020200

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x97

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x7a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020202

    const v6, 0x7f020203

    const v7, 0x7f020202

    const v8, 0x7f020202

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x98

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x78

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020204

    const v6, 0x7f020205

    const v7, 0x7f020204

    const v8, 0x7f020204

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x99

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x63

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020206

    const v6, 0x7f020207

    const v7, 0x7f020206

    const v8, 0x7f020206

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x76

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f020208

    const v6, 0x7f020209

    const v7, 0x7f020208

    const v8, 0x7f020208

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x62

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f02020a

    const v6, 0x7f02020b

    const v7, 0x7f02020a

    const v8, 0x7f02020a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6e

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f02020c

    const v6, 0x7f02020d

    const v7, 0x7f02020c

    const v8, 0x7f02020c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x7f02020e

    const v6, 0x7f02020f

    const v7, 0x7f02020e

    const v8, 0x7f02020e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x71

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02015c

    const v6, 0x7f02015d

    const v7, 0x7f02015c

    const v8, 0x7f02015c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x77

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02015e

    const v6, 0x7f02015f

    const v7, 0x7f02015e

    const v8, 0x7f02015e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020160

    const v6, 0x7f020161

    const v7, 0x7f020160

    const v8, 0x7f020160

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x72

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020162

    const v6, 0x7f020163

    const v7, 0x7f020162

    const v8, 0x7f020162

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020164

    const v6, 0x7f020165

    const v7, 0x7f020164

    const v8, 0x7f020164

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x79

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020166

    const v6, 0x7f020167

    const v7, 0x7f020166

    const v8, 0x7f020166

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x75

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020168

    const v6, 0x7f020169

    const v7, 0x7f020168

    const v8, 0x7f020168

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x69

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02016a

    const v6, 0x7f02016b

    const v7, 0x7f02016a

    const v8, 0x7f02016a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02016c

    const v6, 0x7f02016d

    const v7, 0x7f02016c

    const v8, 0x7f02016c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02016e

    const v6, 0x7f02016f

    const v7, 0x7f02016e

    const v8, 0x7f02016e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x61

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020170

    const v6, 0x7f020171

    const v7, 0x7f020170

    const v8, 0x7f020170

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x73

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020172

    const v6, 0x7f020173

    const v7, 0x7f020172

    const v8, 0x7f020172

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xaa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020174

    const v6, 0x7f020175

    const v7, 0x7f020174

    const v8, 0x7f020174

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xab

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x66

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020176

    const v6, 0x7f020177

    const v7, 0x7f020176

    const v8, 0x7f020176

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xac

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x67

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020178

    const v6, 0x7f020179

    const v7, 0x7f020178

    const v8, 0x7f020178

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xad

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02017a

    const v6, 0x7f02017b

    const v7, 0x7f02017a

    const v8, 0x7f02017a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xae

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02017c

    const v6, 0x7f02017d

    const v7, 0x7f02017c

    const v8, 0x7f02017c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xaf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02017e

    const v6, 0x7f02017f

    const v7, 0x7f02017e

    const v8, 0x7f02017e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020180

    const v6, 0x7f020181

    const v7, 0x7f020180

    const v8, 0x7f020180

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x7a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020182

    const v6, 0x7f020183

    const v7, 0x7f020182

    const v8, 0x7f020182

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x78

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020184

    const v6, 0x7f020185

    const v7, 0x7f020184

    const v8, 0x7f020184

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x63

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020186

    const v6, 0x7f020187

    const v7, 0x7f020186

    const v8, 0x7f020186

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x76

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f020188

    const v6, 0x7f020189

    const v7, 0x7f020188

    const v8, 0x7f020188

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x62

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02018a

    const v6, 0x7f02018b

    const v7, 0x7f02018a

    const v8, 0x7f02018a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6e

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02018c

    const v6, 0x7f02018d

    const v7, 0x7f02018c

    const v8, 0x7f02018c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f02018e

    const v6, 0x7f02018f

    const v7, 0x7f02018e

    const v8, 0x7f02018e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x71

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020190

    const v6, 0x7f020191

    const v7, 0x7f020190

    const v8, 0x7f020190

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x77

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020192

    const v6, 0x7f020193

    const v7, 0x7f020192

    const v8, 0x7f020192

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xba

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020194

    const v6, 0x7f020195

    const v7, 0x7f020194

    const v8, 0x7f020194

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x72

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020196

    const v6, 0x7f020197

    const v7, 0x7f020196

    const v8, 0x7f020196

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020198

    const v6, 0x7f020199

    const v7, 0x7f020198

    const v8, 0x7f020198

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x79

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020166

    const v6, 0x7f020167

    const v7, 0x7f020166

    const v8, 0x7f020166

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x75

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020168

    const v6, 0x7f020169

    const v7, 0x7f020168

    const v8, 0x7f020168

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x69

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02016a

    const v6, 0x7f02016b

    const v7, 0x7f02016a

    const v8, 0x7f02016a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02019a

    const v6, 0x7f02019b

    const v7, 0x7f02019a

    const v8, 0x7f02019a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02019c

    const v6, 0x7f02019d

    const v7, 0x7f02019c

    const v8, 0x7f02019c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x61

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020170

    const v6, 0x7f020171

    const v7, 0x7f020170

    const v8, 0x7f020170

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x73

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020172

    const v6, 0x7f020173

    const v7, 0x7f020172

    const v8, 0x7f020172

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020174

    const v6, 0x7f020175

    const v7, 0x7f020174

    const v8, 0x7f020174

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x66

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020176

    const v6, 0x7f020177

    const v7, 0x7f020176

    const v8, 0x7f020176

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x67

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020178

    const v6, 0x7f020179

    const v7, 0x7f020178

    const v8, 0x7f020178

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02017a

    const v6, 0x7f02017b

    const v7, 0x7f02017a

    const v8, 0x7f02017a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02017c

    const v6, 0x7f02017d

    const v7, 0x7f02017c

    const v8, 0x7f02017c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02017e

    const v6, 0x7f02017f

    const v7, 0x7f02017e

    const v8, 0x7f02017e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xca

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020180

    const v6, 0x7f020181

    const v7, 0x7f020180

    const v8, 0x7f020180

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x7a

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020182

    const v6, 0x7f020183

    const v7, 0x7f020182

    const v8, 0x7f020182

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x78

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020184

    const v6, 0x7f020185

    const v7, 0x7f020184

    const v8, 0x7f020184

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x63

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020186

    const v6, 0x7f020187

    const v7, 0x7f020186

    const v8, 0x7f020186

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xce

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x76

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f020188

    const v6, 0x7f020189

    const v7, 0x7f020188

    const v8, 0x7f020188

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x62

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02018a

    const v6, 0x7f02018b

    const v7, 0x7f02018a

    const v8, 0x7f02018a

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6e

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02018c

    const v6, 0x7f02018d

    const v7, 0x7f02018c

    const v8, 0x7f02018c

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    const/16 v1, 0x6d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const v5, 0x7f02018e

    const v6, 0x7f02018f

    const v7, 0x7f02018e

    const v8, 0x7f02018e

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    .line 303
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->DEBUG:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INFO:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->ERROR:Z

    .line 304
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    .line 307
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeKeyIconInfoHashMap()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const-string v0, "AxT9IME"

    const-string v1, "KeyIcon list is empty! add to default(dumy)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    return-object v0
.end method

.method private makeHashKey(IIII)J
    .locals 4
    .parameter "keyPrimaryCode"
    .parameter "inputMethod"
    .parameter "inputMode"
    .parameter "stateFlag"

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    .line 350
    .local v0, hashKey:J
    mul-int/lit16 v2, p1, 0x3e8

    mul-int/lit8 v3, p2, 0x64

    add-int/2addr v2, v3

    mul-int/lit8 v3, p3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    int-to-long v0, v2

    .line 351
    return-wide v0
.end method

.method private makeKeyIconInfoHashMap()I
    .locals 8

    .prologue
    .line 318
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 325
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 326
    const-wide/16 v0, 0x0

    .line 327
    .local v0, hashKey:J
    const/4 v3, 0x0

    .line 328
    .local v3, value:[I
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v4

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v6

    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeHashKey(IIII)J

    move-result-wide v0

    .line 332
    const/4 v4, 0x4

    new-array v3, v4, [I

    .end local v3           #value:[I
    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr$KeyIconInfo;)I

    move-result v5

    aput v5, v3, v4

    .line 334
    .restart local v3       #value:[I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v0           #hashKey:J
    .end local v3           #value:[I
    :cond_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public getKeyIconResourceId(IIII)[I
    .locals 5
    .parameter "keyPrimaryCode"
    .parameter "inputMethod"
    .parameter "inputMode"
    .parameter "stateFlag"

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 366
    .local v2, values:[I
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->makeHashKey(IIII)J

    move-result-wide v0

    .line 371
    .local v0, hashKey:J
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:[I
    check-cast v2, [I

    .line 373
    .restart local v2       #values:[I
    if-nez v2, :cond_0

    .line 377
    :cond_0
    return-object v2
.end method
