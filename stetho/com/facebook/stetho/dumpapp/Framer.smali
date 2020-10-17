.class Lcom/facebook/stetho/dumpapp/Framer;
.super Ljava/lang/Object;
.source "Framer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/dumpapp/Framer$ClosedHelper;,
        Lcom/facebook/stetho/dumpapp/Framer$FramingOutputStream;,
        Lcom/facebook/stetho/dumpapp/Framer$FramingInputStream;
    }
.end annotation


# static fields
.field public static final ENTER_FRAME_PREFIX:B = 0x21t

.field public static final EXIT_FRAME_PREFIX:B = 0x78t

.field public static final STDERR_FRAME_PREFIX:B = 0x32t

.field public static final STDIN_FRAME_PREFIX:B = 0x2dt

.field public static final STDIN_REQUEST_FRAME_PREFIX:B = 0x5ft

.field public static final STDOUT_FRAME_PREFIX:B = 0x31t

.field private static final TAG:Ljava/lang/String; = "FramingSocket"


# instance fields
.field private final mInput:Ljava/io/DataInputStream;

.field private final mMultiplexedOutputStream:Ljava/io/DataOutputStream;

.field private final mStderr:Ljava/io/PrintStream;

.field private final mStdin:Ljava/io/InputStream;

.field private final mStdout:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    .line 77
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mMultiplexedOutputStream:Ljava/io/DataOutputStream;

    .line 78
    new-instance v0, Lcom/facebook/stetho/dumpapp/Framer$FramingInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/stetho/dumpapp/Framer$FramingInputStream;-><init>(Lcom/facebook/stetho/dumpapp/Framer;Lcom/facebook/stetho/dumpapp/Framer$1;)V

    iput-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStdin:Ljava/io/InputStream;

    .line 79
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Lcom/facebook/stetho/dumpapp/Framer$FramingOutputStream;

    const/16 v3, 0x31

    invoke-direct {v2, p0, v3}, Lcom/facebook/stetho/dumpapp/Framer$FramingOutputStream;-><init>(Lcom/facebook/stetho/dumpapp/Framer;B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStdout:Ljava/io/PrintStream;

    .line 82
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lcom/facebook/stetho/dumpapp/Framer$FramingOutputStream;

    const/16 v2, 0x32

    invoke-direct {v1, p0, v2}, Lcom/facebook/stetho/dumpapp/Framer$FramingOutputStream;-><init>(Lcom/facebook/stetho/dumpapp/Framer;B)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStderr:Ljava/io/PrintStream;

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/stetho/dumpapp/Framer;)Ljava/io/DataInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/dumpapp/Framer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/stetho/dumpapp/Framer;)Ljava/io/DataOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/dumpapp/Framer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mMultiplexedOutputStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method private static handleSuppression(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 5
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "previous":Ljava/lang/Throwable;, "TT;"
    .local p1, "current":Ljava/lang/Throwable;, "TT;"
    if-nez p0, :cond_0

    .line 133
    .end local p1    # "current":Ljava/lang/Throwable;, "TT;"
    :goto_0
    return-object p1

    .line 132
    .restart local p1    # "current":Ljava/lang/Throwable;, "TT;"
    :cond_0
    const-string/jumbo v0, "FramingSocket"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Suppressed while handling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/stetho/common/LogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, p0

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public getStderr()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStderr:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getStdin()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStdin:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStdout()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStdout:Ljava/io/PrintStream;

    return-object v0
.end method

.method public readFrameType()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v2, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 108
    .local v1, "size":I
    new-array v0, v1, [B

    .line 109
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/facebook/stetho/dumpapp/Framer;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 110
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public writeBlob([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mMultiplexedOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 126
    return-void
.end method

.method public writeExitCode(I)V
    .locals 1
    .param p1, "exitCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStdout:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 115
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mStderr:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 116
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1}, Lcom/facebook/stetho/dumpapp/Framer;->writeIntFrame(BI)V

    .line 117
    return-void
.end method

.method public writeIntFrame(BI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "intParameter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mMultiplexedOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 121
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/Framer;->mMultiplexedOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    return-void
.end method
