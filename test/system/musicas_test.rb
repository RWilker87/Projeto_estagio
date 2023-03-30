require "application_system_test_case"

class MusicasTest < ApplicationSystemTestCase
  setup do
    @musica = musicas(:one)
  end

  test "visiting the index" do
    visit musicas_url
    assert_selector "h1", text: "Musicas"
  end

  test "should create musica" do
    visit musicas_url
    click_on "New musica"

    fill_in "Album", with: @musica.album
    fill_in "Artista", with: @musica.artista
    fill_in "Duracao", with: @musica.duracao
    fill_in "Nome", with: @musica.nome
    fill_in "Spotify", with: @musica.spotify_id
    click_on "Create Musica"

    assert_text "Musica was successfully created"
    click_on "Back"
  end

  test "should update Musica" do
    visit musica_url(@musica)
    click_on "Edit this musica", match: :first

    fill_in "Album", with: @musica.album
    fill_in "Artista", with: @musica.artista
    fill_in "Duracao", with: @musica.duracao
    fill_in "Nome", with: @musica.nome
    fill_in "Spotify", with: @musica.spotify_id
    click_on "Update Musica"

    assert_text "Musica was successfully updated"
    click_on "Back"
  end

  test "should destroy Musica" do
    visit musica_url(@musica)
    click_on "Destroy this musica", match: :first

    assert_text "Musica was successfully destroyed"
  end
end
