import { Component, EventEmitter, Output } from "@angular/core";

@Component({
	selector: "app-nova-transferencia",
	templateUrl: "./nova-transferencia.component.html",
	styleUrls: ["./nova-transferencia.component.scss"],
})
export class NovaTransferenciaComponent {
	@Output() aoTransferir: EventEmitter<any> = new EventEmitter();

	valor: number;
	destino: number;

	transferir() {
		this.aoTransferir.emit({ valor: this.valor, destino: this.destino });
		this.limparCampos();
	}

	limparCampos() {
		this.valor = 0;
		this.destino = 0;
	}
}
