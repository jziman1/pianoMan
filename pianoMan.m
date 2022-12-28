% Main function with all of the song specific data
function pianoMan
    % The frequencies of a range of notes
    % S denotes sharp and b denotes flat
    A2 = 220*2^(-24/12);
    A2S = 220*2^(-23/12);
    B2b = A2S;
    B2 = 220*2^(-22/12);
    C2 = 220*2^(-21/12);
    C2S = 220*2^(-20/12);
    D2b = C2S;
    D2 = 220*2^(-19/12);
    D2S = 220*2^(-18/12);
    E2b = D2S;
    E2 = 220*2^(-17/12);
    F2 = 220*2^(-16/12);
    F2S = 220*2^(-15/12);
    G2b = F2S;
    G2 = 220*2^(-14/12);
    G2S = 220*2^(-13/12);
    
    A3 = 220*2^(-12/12);
    A3S = 220*2^(-11/12);
    B3b = A3S;
    B3 = 220*2^(-10/12);
    C3 = 220*2^(-9/12);
    C3S = 220*2^(-8/12);
    D3b = C3S;
    D3 = 220*2^(-7/12);
    D3S = 220*2^(-6/12);
    E3b = D3S;
    E3 = 220*2^(-5/12);
    F3 = 220*2^(-4/12);
    F3S = 220*2^(-3/12);
    G3b = F3S;
    G3 = 220*2^(-2/12);
    G3S = 220*2^(-1/12);
    
    A4b = G3S;
    A4 = 220*2^(0/12);
    A4S = 220*2^(1/12);
    B4b = A4S;
    B4 = 220*2^(2/12);
    C4 = 220*2^(3/12); % Middle C
    C4S = 220*2^(4/12);
    D4b = C4S;
    D4 = 220*2^(5/12);
    D4S = 220*2^(6/12);
    E4b = D4S;
    E4 = 220*2^(7/12);
    F4 = 220*2^(8/12);
    F4S = 220*2^(9/12);
    G4b = F4S;
    G4 = 220*2^(10/12);
    G4S = 220*2^(11/12);
    
    A5b = G4S;
    A5 = 220*2^(12/12);
    A5S = 220*2^(13/12);
    B5b = A5S;
    B5 = 220*2^(14/12);
    C5 = 220*2^(15/12);
    C5S = 220*2^(16/12);
    D5b = C5S;
    D5 = 220*2^(17/12);
    D5S = 220*2^(18/12);
    E5b = D5S;
    E5 = 220*2^(19/12);
    F5 = 220*2^(20/12);
    F5S = 220*2^(21/12);
    G5b = F5S;
    G5 = 220*2^(22/12);
    G5S = 220*2^(23/12);
    
    
    bpm = 80;
    % Note times for 80 bpm
    eighth = [0:1/8000:(1/2)*(60/bpm)-1/8000];
    quarter = [0:1/8000:(60/bpm)-1/8000];
    half = [0:1/8000:2*(60/bpm)-1/8000];
    whole = [0:1/8000:4*(60/bpm)-1/8000];
    
    % Dotted note times for 80 bpm
    dottedEighth = [0:1/8000:1.5*(1/2)*(60/bpm)-1/8000];
    dottedQuarter = [0:1/8000:1.5*(60/bpm)-1/8000];
    dottedHalf = [0:1/8000:1.5*2*(60/bpm)-1/8000];
    dottedWhole = [0:1/8000:1.5*4*(60/bpm)-1/8000];
    
    
    % Treble Clef Intro (bpm = 80)
    trebleIntro = [zeros(1, 65000)];
    cursorPosition = 1;
    
    % Bar 1
    cursorPosition = cursorPosition + 1;
    
    freqs = [A5S A5 E5 G5 F5S];
    times = {quarter quarter quarter quarter quarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/5, bpm);
    
    freqs = [F5 E5 E5b D5];
    times = {quarter quarter quarter quarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/4, bpm);
    
    freqs = [D5b C5];
    times = {quarter  dottedQuarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 2
    cursorPosition = cursorPosition + 1;
    
    freqs = [B5b B5 C5 B5b B5 C5];
    times = {quarter quarter quarter quarter quarter quarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/6, bpm);
    
    freqs = [B5b B5 G4 A5b A5 G4];
    times = {quarter quarter eighth eighth eighth quarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/6, bpm);
    
    freqs = [D4, E4b, E4, G4];
    times = {eighth eighth quarter dottedQuarter};
    [trebleIntro, cursorPosition] = add(trebleIntro, freqs, times, cursorPosition, 1/4, bpm);
    
    
    % Bass Clef Intro (bpm = 80)
    bassIntro = [zeros(1, 65000)];
    cursorPosition = 1;
    
    % Bar 1
    freqs = [D3 F3 A4 C4];
    times = {whole whole whole whole};
    [bassIntro, cursorPosition] = add(bassIntro, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 4;
    
    % Bar 2
    freqs = [D3 F3 A4b B4];
    times = {whole whole whole whole};
    [bassIntro, cursorPosition] = add(bassIntro, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 4;
    
    
    bpm = 180;
    % Times for 180 bpm
    eighth = [0:1/8000:(1/2)*(60/bpm)-1/8000];
    quarter = [0:1/8000:(60/bpm)-1/8000];
    half = [0:1/8000:2*(60/bpm)-1/8000];
    whole = [0:1/8000:4*(60/bpm)-1/8000];
    
    % Dotted times for 180 bpm
    dottedEighth = [0:1/8000:1.5*(1/2)*(60/bpm)-1/8000];
    dottedQuarter = [0:1/8000:1.5*(60/bpm)-1/8000];
    dottedHalf = [0:1/8000:1.5*2*(60/bpm)-1/8000];
    dottedWhole = [0:1/8000:1.5*4*(60/bpm)-1/8000];
    
    
    % Treble Clef Main (bpm = 180)
    trebleMain = [zeros(1, 302000)];
    cursorPosition = 1;
    
    % Bar 3
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 4
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 5
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 6
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 7
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 8
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 9
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4S];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4S];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 10
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 11
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 12
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 13
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 14
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 15
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 16
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 17
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [G4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 18
    freqs = [C4 F4 C5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 F4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [C5 F4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 19 
    freqs = [C4 G4 C5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 G4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [C5 G4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 20
    freqs = [F4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [E4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [D4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 21
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [G4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 22
    freqs = [C4 F4 C5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 F4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [C5 F4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 23
    freqs = [C4 G4 C5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 G4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [C5 G4];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    % Bar 24
    freqs = [F4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [E4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [D4 C5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 25
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 26
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 27
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 28
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 29
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 30
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 31
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 F4S A5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 F4S A5];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 32
    freqs = [D5 B5];
    times = {quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 1/2, bpm);
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 33
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [C4 E4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 34
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [B4 D4 G4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 35
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 36
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G3 C4 E4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 37
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [A4 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 38
    cursorPosition = cursorPosition + 1;
    
    freqs = [G2 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    freqs = [G2 C4 F4];
    times = {quarter quarter quarter};
    [trebleMain, cursorPosition] = add(trebleMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 1;
    
    % Bar 39
    cursorPosition = cursorPosition + 4;
    
    
    % Bass Clef Main (bpm = 180)
    bassMain = [zeros(1, 302000)];
    cursorPosition = 1;
    
    % Bar 3
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 4
    freqs = [B3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 5
    freqs = [A3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 6
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 7
    freqs = [F2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  8
    freqs = [E2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 9
    freqs = [D2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  10
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 11
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 12
    freqs = [B3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 13
    freqs = [A3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 14
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 15
    freqs = [F2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  16
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 17
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  18
    freqs = [F3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  19
    freqs = [G3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  20
    freqs = [F3, E3, D3];
    times = {quarter quarter quarter};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 1, bpm);
    
    % Bar 21
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  22
    freqs = [F3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  23
    freqs = [G3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  24
    freqs = [F3, E3, D3];
    times = {quarter quarter quarter};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 1, bpm);
    
    % Bar  25
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar 26
    freqs = [B3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  27
    freqs = [A3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  28
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  29
    freqs = [F2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  30
    freqs = [E2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  31
    freqs = [D2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  32
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  33
    freqs = [C3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  34
    freqs = [B3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  35
    freqs = [A3];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  36
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  37
    freqs = [F2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  38
    freqs = [G2];
    times = {dottedHalf};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 3, bpm);
    
    % Bar  39
    freqs = [C4 E4 G4];
    times = {whole whole whole};
    [bassMain, cursorPosition] = add(bassMain, freqs, times, cursorPosition, 0, bpm);
    cursorPosition = cursorPosition + 4;
    

    % Add, concatenate, and play
    intro = trebleIntro + bassIntro; % Add the treble clef intro vector and the bass clef intro vector
    main = trebleMain + bassMain; % Add the treble clef main vector and the bass clef main vector
    song = [intro main]; % Concatenate the intro vector and the main vector into a song vector
    soundsc(song, 8000); % Play the song vector
    
%     ynorm = song/max(song);
%     filename = 'Ziman_PianoMan.wav';
%     audiowrite(filename, ynorm, 8000);
end

% Creates padded notes with freqs and times
% Adds those notes to the song vector starting at the cursorPosition
% Moves forward by the cursorInterval with each note added
% cursorPosition and cursorInteral are represented as a multiple of one beat (one quarter note)
% bpm is needed so that the function knows the length of each beat
function [song, cursorPosition] = add(song, freqs, times, cursorPosition, cursorInterval, bpm) 
    quarter = [0:1/8000:(60/bpm)-1/8000];
    cursorPosition = cursorPosition*length(quarter);
    cursorInterval = cursorInterval*length(quarter);
    totalTime = length(song);
    paddedNote = [];
    
    for i = 1:length(freqs)
        pre = zeros(1, cursorPosition - 1);
        post = zeros(1, totalTime - (cursorPosition - 1) - length(times{i}));
        
        A = linspace(0, 1, 0.01*length(times{i}));
        D = linspace(1, 0.4, 0.79*length(times{i}));
        S = linspace(0, 0, 0*length(times{i}));
        R = linspace(0.4, 0, 0.2*length(times{i}));
        ADSR = [A,D,S,R];
        while (length(ADSR) < length(times{i}))
            ADSR = [ADSR 0];
        end
        while (length(ADSR) > length(times{i}))
            ADSR(end) = [];
        end
        
        % Implementing ADSR, exponential decay and instrument synthesis
        note = [ADSR.*exp(-times{i}/0.5).*cos(2*pi*(2*freqs(i)).*times{i} + 1*exp(-times{i}/0.5).*cos(2*pi*(1*freqs(i)).*times{i}))];
        
        paddedNote = [pre note post];
        echo = reverb(paddedNote, bpm, 1/4, 1);
        song = song + paddedNote + echo;
        cursorPosition = cursorPosition + cursorInterval;
    end
    cursorPosition = cursorPosition/length(quarter);
end

% Creates a recursive echo of the note passed into the function
% Each echo's amplitude is 10% of the last
% Each echo is shifted by the parameter delay which is passed as a
% multiple of one beat
function echo = reverb(paddedNote, bpm, delay, counter)
    if counter > 10
        echo = [zeros(1, length(paddedNote))];
        return;
    end
    quarter = [0:1/8000:(60/bpm)-1/8000];
    delay = round(delay*length(quarter));
    paddedNote = [zeros(1, delay) paddedNote(1:end-delay)];
    counter = counter + 1;
    delay = delay/length(quarter);
    echo = 0.1*paddedNote + reverb(0.1*paddedNote, bpm, delay, counter);
end