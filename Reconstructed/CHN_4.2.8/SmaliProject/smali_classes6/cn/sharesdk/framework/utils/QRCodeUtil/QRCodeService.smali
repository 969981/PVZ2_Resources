.class public Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;
.super Lcn/sharesdk/framework/Service;
.source "QRCodeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;
    }
.end annotation


# static fields
.field private static a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;


# instance fields
.field private b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

.field private c:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/sharesdk/framework/Service;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    return-void
.end method

.method static synthetic a()Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;
    .locals 1

    .line 17
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)Lcn/sharesdk/framework/utils/QRCodeUtil/j;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/j;)V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;

    :cond_1
    return-void
.end method


# virtual methods
.method public generate()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 206
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateAsync()V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 220
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener can not be null when you generate bitmap in Async method"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public generateAsync(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;)V
    .locals 0

    .line 213
    sput-object p1, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    .line 214
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->generateAsync()V

    return-void
.end method

.method protected getServiceVersionInt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "QRCodeService"

    return-object v0
.end method

.method public onBind()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    return-void
.end method

.method public setBackground(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 48
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(I)V

    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 56
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 69
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 74
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setBackgroundPath(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundPath(Ljava/lang/String;Z)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 95
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundUrl(Ljava/lang/String;Z)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 100
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCodeColor(I)V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c(I)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 178
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;)V
    .locals 0

    .line 185
    sput-object p1, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 105
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(I)V

    return-void
.end method

.method public setLogoBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 111
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setLogoBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 116
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setLogoDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 121
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setLogoDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 126
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setLogoPath(Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 131
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLogoPath(Ljava/lang/String;Z)V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 136
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 141
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;Z)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 146
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPoints(IIII)V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 154
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(IIII)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 40
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(II)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b()V

    .line 170
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Ljava/lang/String;)V

    return-void
.end method
