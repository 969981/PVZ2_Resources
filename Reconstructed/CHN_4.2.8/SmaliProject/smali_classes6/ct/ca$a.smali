.class final Lct/ca$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final b:Lct/ca$a;


# instance fields
.field public a:Ljava/lang/String;

.field private final c:I

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Object;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    new-instance v0, Lct/ca$a;

    invoke-direct {v0}, Lct/ca$a;-><init>()V

    sput-object v0, Lct/ca$a;->b:Lct/ca$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 295
    iput v0, p0, Lct/ca$a;->g:I

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lct/ca$a;->c:I

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lct/ca$a;->d:[B

    .line 303
    iput-object v0, p0, Lct/ca$a;->e:Ljava/lang/String;

    .line 304
    iput-object v0, p0, Lct/ca$a;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 295
    iput v0, p0, Lct/ca$a;->g:I

    .line 309
    iput p1, p0, Lct/ca$a;->c:I

    .line 310
    iput-object p2, p0, Lct/ca$a;->d:[B

    .line 311
    iput-object p3, p0, Lct/ca$a;->e:Ljava/lang/String;

    .line 312
    iput-object p4, p0, Lct/ca$a;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lct/ca$a;)[B
    .locals 0

    .line 286
    iget-object p0, p0, Lct/ca$a;->d:[B

    return-object p0
.end method

.method static synthetic b(Lct/ca$a;)Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lct/ca$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lct/ca$a;)I
    .locals 0

    .line 286
    iget p0, p0, Lct/ca$a;->c:I

    return p0
.end method

.method static synthetic d(Lct/ca$a;)Ljava/lang/Object;
    .locals 0

    .line 286
    iget-object p0, p0, Lct/ca$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lct/ca$a;)I
    .locals 2

    .line 286
    iget v0, p0, Lct/ca$a;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lct/ca$a;->g:I

    return v0
.end method

.method static synthetic f(Lct/ca$a;)I
    .locals 0

    .line 286
    iget p0, p0, Lct/ca$a;->g:I

    return p0
.end method
