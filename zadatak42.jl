struct Kosarkas
    ime::String
    prezime::String
    pozicija::String
    visina::Int
end;

function pronadjiKosarkase(kosarkasi, visina, pozicija)
    n = length(kosarkasi)
    pronadjeni = []
    for i = 1:n
        if kosarkasi[i].visina > visina
            if kosarkasi[i].pozicija == pozicija
                push!(pronadjeni, kosarkasi[i])
            end
        end        
    end
    return pronadjeni
end

kosarkasi = Array{Kosarkas}(undef, 6)

kosarkasi[1] = Kosarkas("Branko", "Lazic", "krilo",195)
kosarkasi[2] = Kosarkas("Fakundo", "Kampaco", "plej",185)
kosarkasi[3] = Kosarkas("Bogdan", "Bogdanovic", "bek",198)
kosarkasi[4] = Kosarkas("Nikola", "Jokic", "centar", 215)
kosarkasi[5] = Kosarkas("Luka", "Mitrovic", "krini centar",210)
kosarkasi[6] = Kosarkas("Nikola", "Kalinic", "krilo", 200)

pronadjeni = pronadjiKosarkase(kosarkasi, 195, "plej")
println(pronadjeni)