struct Kosarkas
    ime::String
    prezime::String
    pozicija::String
    visina::Int
end;

function binarnoPronadjiJednog(kosarkasi, visina)
    p = 1
    r = length(kosarkasi)
    while p <= r
        q = Int(floor((p + r) / 2))
        if kosarkasi[q].visina == visina
            return q
        end
        if kosarkasi[q].visina < visina
            p = q + 1
        else
            r = q - 1
        end
    end
    return -1
end

function sviSaVisinom(kosarkasi, q)
    visina = kosarkasi[q].visina
    pronadjeni = []
    p = q
    while p > 0 && kosarkasi[p].visina == visina
        push!(pronadjeni, kosarkasi[p])
        p -= 1
    end
    p = q + 1
    while p <= length(kosarkasi) && kosarkasi[p].visina == visina
        push!(pronadjeni, kosarkasi[p])
        p += 1
    end
    return pronadjeni
end


kosarkasi = Array{Kosarkas}(undef, 10)

kosarkasi[1] = Kosarkas("Branko", "Lazic", "krilo",195)
kosarkasi[2] = Kosarkas("Fakundo", "Kampaco", "plej",185)
kosarkasi[3] = Kosarkas("Bogdan", "Bogdanovic", "bek",200)
kosarkasi[4] = Kosarkas("Nikola", "Jokic", "centar", 215)
kosarkasi[5] = Kosarkas("Luka", "Mitrovic", "krini centar",210)
kosarkasi[6] = Kosarkas("Nikola", "Kalinic", "krilo", 200)
kosarkasi[7] = Kosarkas("Filip", "Petrusev", "krilni centar",200)
kosarkasi[8] = Kosarkas("Nikola", "Milutinov", "centar",208)
kosarkasi[9] = Kosarkas("Stefan", "Jovic", "bek",190)
kosarkasi[10] = Kosarkas("Nikola", "Jovic", "krilni cenatr", 215)

sort!(kosarkasi, by = x->x.visina)

q = binarnoPronadjiJednog(kosarkasi, 215)

if q != -1
    pronadjeni = sviSaVisinom(kosarkasi, q)
    println(pronadjeni)
else
    println("Nije pronadjen kosarkas sa unetom visinom")
end